# Portefeuille de Bibliothèques

Langues : [Português (Brasil)](portfolio-de-bibliotecas.md) | [English](portfolio-de-bibliotecas.en.md) | [Español](portfolio-de-bibliotecas.es.md) | **Français**

Ce dépôt n’est pas un catalogue de bibliothèques tierces. C’est le hub central de l’écosystème **AS-CNPJ**, conçu pour présenter, organiser et gouverner des bibliothèques auteur, une par langage, toutes basées sur le même contrat technique.

## Rôle du hub

Le hub sert à :

- centraliser la documentation et le positionnement du projet ;
- publier les sources officielles, les vecteurs de test et les décisions techniques ;
- pointer vers les dépôts publics de chaque langage ;
- maintenir la cohérence entre contrats, nomenclature et comportement.

## Famille de dépôts

| Repo | Rôle | Statut |
| --- | --- | --- |
| `as-cnpj` | Hub central, documentation, vecteurs, audit et gouvernance | Actuel |
| `as-cnpj-js` | Bibliothèque auteur pour JavaScript/TypeScript | Publié |
| `as-cnpj-python` | Bibliothèque auteur pour Python | Publié |
| `as-cnpj-java` | Bibliothèque auteur pour Java | Planifié |
| `as-cnpj-dotnet` | Bibliothèque auteur pour C# /.NET | Planifié |
| `as-cnpj-go` | Bibliothèque auteur pour Go | Planifié |
| `as-cnpj-php` | Bibliothèque auteur pour PHP | Optionnel |
| `as-cnpj-rust` | Bibliothèque auteur pour Rust | Optionnel |

## Ordre recommandé

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

## Convention de nommage

- hub : `as-cnpj`
- dépôts par langage : `as-cnpj-{langage}`
- paquets suggérés :
  - npm : `@ascnpj/core`
  - PyPI : `as-cnpj`
  - Maven : `br.com.ascnpj:as-cnpj`
  - NuGet : `AsCnpj`

## Contrat entre bibliothèques

Chaque bibliothèque de l’écosystème doit :

- valider le CNPJ numérique et alphanumérique ;
- partager la même sémantique de normalisation ;
- partager le même ensemble de vecteurs de test ;
- documenter clairement les modes permissif et strict ;
- garder un comportement prévisible pour les entrées masquées et non masquées ;
- éviter les dépendances inutiles dans le cœur de l’algorithme.

## Source de vérité

Même après la publication des runtimes :

- le manifeste reste dans le hub ;
- la spécification reste dans le hub ;
- les vecteurs de test restent dans le hub ;
- la gouvernance et les templates restent dans le hub.

## Prochain mouvement

Avec `as-cnpj-js` et `as-cnpj-python` déjà publiés, le prochain mouvement recommandé pour l’organisation est `as-cnpj-java`.
