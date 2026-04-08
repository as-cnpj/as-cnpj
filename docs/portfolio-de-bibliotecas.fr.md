# Portefeuille de Bibliothèques

Langues : [Português (Brasil)](portfolio-de-bibliotecas.md) | [English](portfolio-de-bibliotecas.en.md) | [Español](portfolio-de-bibliotecas.es.md) | **Français**

Ce dépôt **n'est pas un catalogue de bibliothèques tierces**.

Il est le hub central de l'écosystème **AS-CNPJ**, conçu pour présenter, organiser et gouverner des bibliothèques **auteur**, une par langage, toutes basées sur la même spécification officielle.

## Rôle de ce hub

Le hub existe pour :

- servir de bannière publique du sujet ;
- centraliser la documentation et le positionnement du projet ;
- publier les règles officielles, les vecteurs de test et les décisions techniques ;
- pointer vers les dépôts de chaque langage ;
- maintenir la cohérence entre APIs et comportement.

## Famille de dépôts prévue

| Repo | Rôle | Statut initial |
| --- | --- | --- |
| `as-cnpj` | Hub central, documentation, vecteurs de test, gouvernance et vue d'ensemble | Actuel |
| `as-cnpj-js` | Bibliothèque auteur pour JavaScript/TypeScript | Publié |
| `as-cnpj-python` | Bibliothèque auteur pour Python | Graine locale dans le hub |
| `as-cnpj-java` | Bibliothèque auteur pour Java | Planifié |
| `as-cnpj-dotnet` | Bibliothèque auteur pour C# /.NET | Planifié |
| `as-cnpj-go` | Bibliothèque auteur pour Go | Planifié |
| `as-cnpj-php` | Bibliothèque auteur pour PHP | Optionnel |
| `as-cnpj-rust` | Bibliothèque auteur pour Rust | Optionnel |

## Ordre recommandé d'exécution

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

Cet ordre a du sens car :

- JS/TS couvre navigateur, Node et intégrations rapides ;
- Python couvre automatisation, backends et data stacks ;
- Java et .NET sont forts en contexte d'entreprise ;
- Go convient bien aux services, CLIs et intégrations haute performance.

## Convention de nommage

- repo hub: `as-cnpj`
- repos par langage: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`
- packages suggérés :
  - npm: `@ascnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Contrat entre bibliothèques

Chaque bibliothèque de l'écosystème doit :

- valider le CNPJ numérique et alphanumérique ;
- partager la même sémantique de normalisation ;
- partager le même ensemble de vecteurs de test ;
- documenter clairement le mode permissif et le mode strict ;
- garder un comportement prévisible pour les entrées masquées et non masquées ;
- éviter les dépendances inutiles dans le noyau de l'algorithme.

## Source de vérité de l'écosystème

Même après la publication des dépôts dérivés :

- le manifeste reste dans le hub ;
- la spécification reste dans le hub ;
- les vecteurs de test restent dans le hub ;
- le template des nouveaux dépôts reste dans le hub.

Cela évite que chaque langage commence à inventer sa propre version du projet.

## Prochain mouvement

Le prochain dépôt recommandé de l'org est désormais `as-cnpj-python`.

La graine locale existe déjà dans :

- `packages/python-reference`
