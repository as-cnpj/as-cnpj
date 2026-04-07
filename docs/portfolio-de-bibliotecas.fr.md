# Portefeuille de bibliotheques

Langues: [Portugues (Brasil)](portfolio-de-bibliotecas.md) | [English](portfolio-de-bibliotecas.en.md) | [Espanol](portfolio-de-bibliotecas.es.md) | **Francais**

Ce depot **n'est pas un catalogue de bibliotheques tierces**.

Il est le hub central de l'ecosysteme **AS-CNPJ**, concu pour presenter, organiser et gouverner des bibliotheques auteur, une par langage, toutes basees sur la meme specification officielle.

## Role de ce hub

Le hub existe pour:

- servir de banniere publique du sujet;
- centraliser la documentation et le positionnement du projet;
- publier les regles officielles, les vecteurs de test et les decisions techniques;
- pointer vers les depots de chaque langage;
- maintenir la coherence entre APIs et comportement.

## Famille de depots prevue

| Repo | Role | Statut initial |
| --- | --- | --- |
| `as-cnpj` | Hub central, documentation, vecteurs de test, gouvernance et vue d'ensemble | Actuel |
| `as-cnpj-js` | Bibliotheque auteur pour JavaScript/TypeScript | Publie |
| `as-cnpj-python` | Bibliotheque auteur pour Python | Planifie |
| `as-cnpj-java` | Bibliotheque auteur pour Java | Planifie |
| `as-cnpj-dotnet` | Bibliotheque auteur pour C# /.NET | Planifie |
| `as-cnpj-go` | Bibliotheque auteur pour Go | Planifie |
| `as-cnpj-php` | Bibliotheque auteur pour PHP | Optionnel |
| `as-cnpj-rust` | Bibliotheque auteur pour Rust | Optionnel |

## Ordre d'execution recommande

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

Cet ordre a du sens car:

- JS/TS couvre navigateur, Node et integrations rapides;
- Python couvre automatisation, backends et data stacks;
- Java et .NET sont forts en contexte d'entreprise;
- Go convient bien aux services, CLIs et integrations haute performance.

## Convention de nommage

- repo hub: `as-cnpj`
- repos par langage: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`
- packages suggeres:
  - npm: `@as-cnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Contrat entre bibliotheques

Chaque bibliotheque de l'ecosysteme doit:

- valider le CNPJ numerique et alphanumerique;
- partager la meme semantique de normalisation;
- partager le meme ensemble de vecteurs de test;
- documenter clairement le mode permissif et le mode strict;
- garder un comportement previsible pour les entrees masquees et non masquees;
- eviter les dependances inutiles dans le noyau de l'algorithme.

## Source de verite de l'ecosysteme

Meme apres la publication des depots derives:

- le manifeste reste dans le hub;
- la specification reste dans le hub;
- les vecteurs de test restent dans le hub;
- le template des nouveaux depots reste dans le hub.

Cela evite que chaque langage commence a inventer sa propre version du projet.
