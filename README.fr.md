# AS-CNPJ

Langues : [Português (Brasil)](README.md) | [English](README.en.md) | [Español](README.es.md) | **Français**

Écosystème auteur de bibliothèques pour le CNPJ numérique et alphanumérique.

Organisation GitHub : https://github.com/as-cnpj

## Vision

Le projet **AS-CNPJ** existe pour répondre à un vrai problème d'ingénierie : la transition du CNPJ vers le format alphanumérique, annoncée par la Receita Federal pour **juillet 2026**, exige des implémentations correctes, auditables et cohérentes entre les langages.

Ce dépôt `as-cnpj` est le **hub central** de l'organisation. Ce n'est pas la bibliothèque de production finale d'un langage spécifique. Il centralise :

- le positionnement de l'écosystème ;
- la documentation officielle consolidée ;
- les règles techniques partagées ;
- les vecteurs de test et contrats de comportement ;
- la gouvernance de la famille de dépôts ;
- des copies locales de référence lorsque cela aide l'évolution des dépôts dérivés.

## Modèle de l'écosystème

Le modèle adopté est désormais simple :

- **1 organisation** : `as-cnpj`
- **1 dépôt central** : `as-cnpj`
- **1 dépôt par bibliothèque** : `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

Ce modèle réduit le mélange entre documentation, gouvernance et code d'exécution.

## Principes

- implémentation propre, sans copier de code tiers ;
- base officielle de la Receita Federal ;
- même comportement fonctionnel entre les langages ;
- tests automatisés comme contrat ;
- API petite et auditable ;
- support simultané du CNPJ historique et alphanumérique.

## Faits officiels qui impactent toutes les bibliothèques

- l'échéance officielle consultée reste **juillet 2026** ;
- les CNPJ actuels restent valides ;
- les deux formats coexistent ;
- les 12 premiers caractères acceptent `A-Z0-9` ;
- les 2 chiffres de contrôle restent numériques ;
- le DV reste en modulo 11 avec conversion `ASCII - 48` ;
- même après juillet 2026, une nouvelle inscription peut encore être entièrement numérique.

Ce dernier point est crucial : aucune bibliothèque de la famille ne doit supposer que "nouveau CNPJ" signifie "CNPJ avec lettres".

## Famille de Dépôts

| Repo | Rôle | Statut |
| --- | --- | --- |
| `as-cnpj` | Hub central, manifeste, spécification, vecteurs de test et gouvernance | Actuel |
| `as-cnpj-js` | Bibliothèque auteur pour JavaScript/TypeScript | Publié |
| `as-cnpj-python` | Bibliothèque auteur pour Python | Graine locale en préparation |
| `as-cnpj-java` | Bibliothèque auteur pour Java | Planifié |
| `as-cnpj-dotnet` | Bibliothèque auteur pour C# /.NET | Planifié |
| `as-cnpj-go` | Bibliothèque auteur pour Go | Planifié |

## Ce qui existe aujourd'hui dans ce hub

- [Manifeste et principes d'implémentation](docs/manifesto-as-cnpj.md)
- [Sources officielles de la Receita Federal et règles](docs/fontes-oficiais-e-regras.md)
- [Portefeuille des bibliothèques de l'écosystème](docs/portfolio-de-bibliotecas.md)
- [Modèle standard pour la famille de dépôts](docs/template-repos-da-familia.md)
- [Feuille de route des dépôts](docs/roadmap-dos-repositorios.md)
- [Playbook de l'org GitHub (naming, gouvernance, visuel)](docs/playbook-da-org-github.md)
- [Historique de l'extraction de as-cnpj-js](docs/extracao-as-cnpj-js.md)
- [Registre structuré des dépôts de l'écosystème](catalog/repos-oficiais.json)
- [Vecteurs partagés](vectors/cnpj.json) | [Schéma](vectors/cnpj.schema.json)
- [Politique de sécurité](SECURITY.md)
- [Audit de sécurité](AUDIT.md)
- [Politique de contribution](CONTRIBUTING.md)
- [Référence locale de la bibliothèque JS](packages/js-reference/README.md)
- [Référence locale de la bibliothèque Python](packages/python-reference/README.md)

## Ordre recommandé

1. consolider la spécification, le manifeste et les vecteurs de test dans le hub ;
2. stabiliser l'API publique JS/TS dans le repo `as-cnpj-js` ;
3. porter le même contrat vers Python, Java, .NET et Go ;
4. publier des releases indépendantes par repo seulement après convergence des tests ;
5. maintenir le hub comme source de vérité pour les vecteurs, le manifeste et la gouvernance.

## Tests

```bash
node packages/js-reference/test/run.js
```

Ou :

```bash
npm.cmd test
```

## Extraction Locale des Futurs Dépôts

Les scripts actuels existent pour des raisons historiques et comme base pour de futurs flux d'extraction contrôlée :

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-js.ps1
```

Exemple avec destination personnalisée :

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-js.ps1 -Destination ..\as-cnpj-js
```

Pour la graine Python :

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-python.ps1
```

## Maintenance

Maintainer : **@0moura**  
Contact institutionnel : **ascnpj@0moura.io**

Pour signaler des vulnérabilités, voir [SECURITY.md](SECURITY.md).  
Pour contribuer, voir [CONTRIBUTING.md](CONTRIBUTING.md).

## Direction Actuelle

Ce dépôt doit se comporter de plus en plus comme la **homepage technique de l'org**.

Les bibliothèques de production doivent vivre dans leurs propres dépôts.
