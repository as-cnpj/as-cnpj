# Guide Pratique de Stockage et Migration

Langues : [Português (Brasil)](guia-pratico-de-armazenamento-e-migracao.md) | [English](guia-pratico-de-armazenamento-e-migracao.en.md) | [Español](guia-pratico-de-armazenamento-e-migracao.es.md) | **Français**

Ce guide complète la documentation technique avec un focus opérationnel.

L'objectif ici n'est pas de répéter la règle du chiffre de contrôle, mais de réduire les erreurs d'architecture, le retravail de migration et les mauvaises décisions de modélisation.

## Règle de base

- un document est du texte ;
- le champ canonique doit être stocké sans masque ;
- la valeur doit être normalisée avant la persistance ;
- le document ne doit pas être une clé primaire par défaut ;
- le document ne doit pas utiliser un type de colonne numérique.

## Comment stocker correctement

### Scénario 1 : système qui gère uniquement le CNPJ

Modèle recommandé :

- `id`
- `cnpj`
- `created_at`
- `updated_at`

Règles :

- `id` technique comme clé primaire ;
- `cnpj` en `CHAR(14)` ou `VARCHAR(14)` ;
- stockage sans masque ;
- stockage en majuscules ;
- index ou unicité sur la valeur normalisée quand le domaine le permet.

### Scénario 2 : système qui gère CPF et CNPJ

Modèle recommandé :

- `id`
- `document_number`
- `document_type`
- `document_country_code`

Règles :

- `document_number` toujours comme texte ;
- `document_type` distingue `CPF`, `CNPJ` et autres ;
- `document_country_code` évite le couplage futur.

### Scénario 3 : SaaS multi-pays

Modèle recommandé :

- `id`
- `registration_number`
- `registration_type`
- `country_code`

Règles :

- ne pas lier le domaine à un champ nommé `cnpj` ;
- valider par pays et type ;
- garder la valeur principale sans masque ;
- formater seulement à la frontière UI ou export.

## Ce qu'il faut éviter

- `BIGINT`, `INT`, `NUMBER`, `NUMERIC` ou équivalents pour les documents ;
- document comme `PK` physique de la table ;
- stocker la valeur masquée comme représentation canonique ;
- réutiliser la même vieille regex à travers plusieurs couches ;
- répartir la validation entre trigger, frontend et backend sans contrat partagé.

## Ligne de migration recommandée

### 1. Inventaire

Cartographiez où le CNPJ apparaît :

- base de données ;
- ORM ;
- API ;
- frontend ;
- intégrations ;
- rapports ;
- documents fiscaux électroniques.

### 2. Base de données

Vérifiez :

- type de colonne ;
- index ;
- contraintes ;
- triggers et procédures ;
- vues et matérialisations ;
- jobs ETL.

### 3. Contrat

Définissez un contrat unique :

- entrée acceptée avec ou sans masque ;
- stockage toujours sans masque ;
- normalisation en majuscules ;
- validation mathématique obligatoire ;
- formatage uniquement pour la présentation.

### 4. Application

Vérifiez :

- payloads d'API ;
- définitions OpenAPI, GraphQL et JSON Schema ;
- composants de formulaire ;
- messages d'erreur ;
- filtres, recherche et tri ;
- importeurs et exporteurs.

### 5. Intégrations externes

Vérifiez :

- ERP ;
- facturation ;
- compliance ;
- partenaires ;
- messagerie ;
- middleware fiscal.

### 6. Homologation

Avant le déploiement :

- valider contre des cas numériques hérités ;
- valider contre des cas alphanumériques ;
- valider contre les vecteurs partagés du hub ;
- valider contre les simulateurs officiels de la Receita quand c'est pertinent ;
- valider les scénarios de coexistence entre les deux formats.

## SQL de référence

### Exemple de colonne correcte

```sql
ALTER TABLE entreprise
  ADD COLUMN cnpj VARCHAR(14) NOT NULL;
```

### Exemple d'index unique

```sql
CREATE UNIQUE INDEX ux_entreprise_cnpj
  ON entreprise (cnpj);
```

### Exemple de migration d'une colonne numérique vers du texte

Le détail varie selon la base, mais la ligne est :

1. créer une nouvelle colonne texte ;
2. remplir la nouvelle colonne ;
3. ajuster le code applicatif ;
4. basculer index et contraintes ;
5. retirer l'ancienne colonne après stabilisation.

## DFe et écosystème fiscal

Le changement ne s'arrête pas à l'enregistrement.

Si le système participe à `NF-e`, `CT-e`, `MDF-e`, `NFC-e` et flux similaires, le plan doit couvrir tout le chemin fiscal :

- schemas ;
- autorisation ;
- stockage XML ;
- parsing des documents ;
- routage par CNPJ ;
- intégrations avec middleware fiscal.

Sources officielles utiles :

- Portail DFe / Conformidade Fácil  
  https://dfe-portal.svrs.rs.gov.br/Cff/Documentos
- Portail MDF-e  
  https://dfe-portal.svrs.rs.gov.br/mdfe/Documentos

## Checklist court pour les équipes

### Engineering

- la colonne est-elle du texte ?
- le stockage canonique est-il sans masque ?
- la normalisation est-elle centralisée ?
- l'API accepte-t-elle les deux formats ?

### Data / DBA

- les index restent-ils valides ?
- les requêtes évitent-elles les hypothèses numériques ?
- ETL et rapports restent-ils intègres ?

### Produit / Opérations

- formulaires et messages ont-ils été mis à jour ?
- les partenaires externes ont-ils été notifiés ?
- existe-t-il un plan d'homologation par étapes ?

## Recommandation finale

S'il faut préserver une seule décision, c'est celle-ci :

**la valeur canonique du document doit être du texte normalisé, sans masque, en majuscules et indépendant de l'UI.**
