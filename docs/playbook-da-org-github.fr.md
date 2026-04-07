# Playbook de l'org GitHub

Langues: [Português (Brasil)](playbook-da-org-github.md) | [English](playbook-da-org-github.en.md) | [Español](playbook-da-org-github.es.md) | **Français**

## Objectif

Standardiser la presentation, le nommage et la gouvernance de l'org `as-cnpj` et des depots de la famille.

## Modele de l'org

- **Une org unique**: `as-cnpj`
- **Un depot central de gouvernance**: `as-cnpj`
- **Un depot par bibliotheque**: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

Le hub centralise la documentation, les vecteurs de test et les benchmarks.
Chaque depot par langage centralise uniquement le code de ce langage.

## Nommage

- hub: `as-cnpj`
- depots derives: `as-cnpj-{langage}`
- packages suggeres:
  - npm: `@as-cnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Description courte suggeree pour l'org

Bibliotheques auteur pour la validation du CNPJ numerique et alphanumerique, avec une specification partagee et un accent sur la coherence entre langages.

## Depots a epingler

Lorsqu'ils existent:

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

## Description courte suggeree par depot

| Repo | Description |
| --- | --- |
| `as-cnpj` | Hub central de l'ecosysteme AS-CNPJ: manifeste, specification, vecteurs de test et gouvernance. |
| `as-cnpj-js` | Bibliotheque auteur AS-CNPJ pour JavaScript et TypeScript. |
| `as-cnpj-python` | Bibliotheque auteur AS-CNPJ pour Python. |
| `as-cnpj-java` | Bibliotheque auteur AS-CNPJ pour Java. |
| `as-cnpj-dotnet` | Bibliotheque auteur AS-CNPJ pour C# et .NET. |
| `as-cnpj-go` | Bibliotheque auteur AS-CNPJ pour Go. |

## Topics suggeres

Topics communs:

- `cnpj`
- `cnpj-alfanumerico`
- `brasil`
- `validacao`
- `documentos-brasileiros`

Topics par depot:

- `as-cnpj`
- `typescript`
- `python`
- `java`
- `dotnet`
- `golang`

## Ordre de creation recommande

1. bien configurer `as-cnpj`;
2. faire murir `as-cnpj-js`;
3. publier le premier package de l'ecosysteme;
4. repeter le processus dans les autres langages.

N'ouvrez pas plusieurs depots vides en meme temps.
Ouvrez un depot, stabilisez-le, documentez-le, publiez-le, puis passez au suivant.

## Politique visuelle

Chaque depot doit communiquer immediatement:

- qu'il appartient a l'ecosysteme AS-CNPJ;
- quel langage il couvre;
- s'il est deja pret a l'usage ou encore en phase initiale.

## Structure du debut du README

Chaque depot derive doit ouvrir avec:

1. nom du depot;
2. une courte phrase de positionnement;
3. statut du projet;
4. installation;
5. exemple minimal;
6. lien vers le hub `as-cnpj`.

## Regle de gouvernance

- le hub centralise documentation, vecteurs de test et benchmarks;
- chaque depot par langage centralise uniquement le code de ce langage;
- les vecteurs de test doivent etre partages et versionnes de facon independante;
- chaque implementation doit prouver sa compatibilite avec les vecteurs du hub;
- les nouveaux depots ne doivent naitre qu'apres avoir suivi le template du hub.
