# Feuille de Route des Outils et Capacités

Langues : [Português (Brasil)](roadmap-de-ferramentas-e-capacidades.md) | [English](roadmap-de-ferramentas-e-capacidades.en.md) | [Español](roadmap-de-ferramentas-e-capacidades.es.md) | **Français**

Ce document organise ce qui crée une vraie valeur produit dans l'écosystème AS-CNPJ au-delà de la validation unitaire de base.

L'objectif est de guider l'évolution des bibliothèques et du site avec un focus sur l'utilité pratique.

## Thèse

La validation d'un élément à la fois résout le cœur, mais pas toute l'expérience d'adoption.

Les prochaines capacités à plus forte valeur sont :

- validation par lot ;
- normalisation et formatage par lot ;
- outils publics sur le site ;
- utilitaires de migration et d'homologation.

## Ce qu'il vaut la peine de construire sur le site

### 1. Validateur de CNPJ

Outil public simple :

- reçoit un CNPJ ;
- le normalise ;
- indique s'il est valide ;
- montre la forme canonique ;
- montre s'il passe le mode strict.

### 2. Validateur par lot

Outil pour coller plusieurs lignes :

- une entrée par ligne ;
- un résultat par ligne ;
- résumé agrégé ;
- export CSV optionnel.

Recommandation :

- traitement local dans le navigateur quand c'est possible ;
- pas d'upload obligatoire ;
- pas de persistance par défaut.

### 3. Générateur d'exemples valides pour test

Recommandation de naming :

- éviter de l'appeler "générateur de nouveaux CNPJs" ;
- préférer **générateur d'exemples valides pour test**.

Règles suggérées :

- générer uniquement des exemples structurellement valides ;
- les étiqueter clairement comme tests ;
- éventuellement croiser le comportement avec le simulateur officiel de la Receita.

### 4. Formateur / normaliseur

Outil simple mais utile :

- entrée masquée ou non ;
- sortie normalisée ;
- sortie formatée ;
- indication d'invalidité.

### 5. Playground d'API

Page montrant :

- appel JS ;
- appel Python ;
- résultat attendu ;
- différence entre mode permissif et strict.

## Ce qu'il vaut la peine de construire dans les bibliothèques

### Cœur obligatoire

Chaque bibliothèque doit garder :

- `normalize`
- `isValid`
- `format`
- `assertValid`
- `calculateCheckDigits`

### Capacités recommandées de seconde couche

#### 1. Validation par lot

Forte recommandation pour tous les principaux langages.

Noms possibles :

- `validateMany`
- `isValidMany`
- `normalizeMany`
- `formatMany`

Contrat recommandé :

- préserver l'ordre d'entrée ;
- ne pas masquer les erreurs via la concurrence ;
- ne pas faire d'IO ;
- rester déterministe.

Format de retour recommandé :

```txt
[
  {
    index,
    input,
    normalized,
    formatted,
    valid,
    reason
  }
]
```

#### 2. Résumé agrégé

En plus du retour élément par élément, il vaut la peine d'exposer un agrégateur simple :

- quantité totale ;
- quantité valide ;
- quantité invalide ;
- motifs les plus fréquents.

#### 3. Codes d'erreur stables

Surtout en lot, les messages libres ne passent pas à l'échelle.

Exemples :

- `INVALID_TYPE`
- `INVALID_LENGTH`
- `INVALID_ASCII`
- `INVALID_CHECK_DIGIT`
- `TRIVIAL_REPETITION`
- `INVALID_STRICT_FORMAT`

#### 4. Itération efficace

Pour les bibliothèques backend :

- accepter des listes ;
- plus tard envisager des itérables ou des streams ;
- garder le cœur simple avant des abstractions plus larges.

## Priorité recommandée

### Haute

- validateur simple sur le site ;
- validateur par lot sur le site ;
- validation par lot en JS ;
- validation par lot en Python.

### Moyenne

- générateur d'exemples valides pour test ;
- formateur/normaliseur public ;
- codes d'erreur stables ;
- export CSV sur le site.

### Basse

- benchmark public entre langages ;
- SDK de migration ;
- traitement de flux avancé.

## Recommandation produit

Si l'idée est d'investir là où la communauté perçoit de la valeur le plus vite :

1. validateur simple sur le site ;
2. validateur par lot sur le site ;
3. `validateMany` ou équivalent dans les bibliothèques ;
4. générateur d'exemples valides pour test.

## Règle de design

Toute nouvelle capacité doit respecter ceci :

- le cœur reste petit ;
- le comportement reste prévisible ;
- l'API unitaire reste la référence ;
- la nouvelle couche ne peut pas introduire de dépendance inutile dans l'algorithme central.
