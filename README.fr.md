# AS-CNPJ

Langues : [Português (Brasil)](README.md) | [English](README.en.md) | [Español](README.es.md) | **Français**

Écosystème auteur de bibliothèques pour le CNPJ numérique et alphanumérique.

Organisation GitHub : https://github.com/as-cnpj

## Vision

AS-CNPJ existe pour répondre à un vrai problème d’ingénierie : la transition du CNPJ vers un format alphanumérique, annoncée par la Receita Federal pour juillet 2026, exige des implémentations correctes, auditables et cohérentes entre les langages.

Ce dépôt `as-cnpj` est le hub central de l’organisation. Il centralise :

- le positionnement de l’écosystème ;
- la documentation officielle consolidée ;
- les règles techniques partagées ;
- les vecteurs de test et contrats de comportement ;
- la gouvernance de la famille de dépôts.

## Modèle de l’écosystème

- 1 organisation : `as-cnpj`
- 1 dépôt central : `as-cnpj`
- 1 dépôt par bibliothèque : `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

## Points clés

- l’échéance officielle reste juillet 2026 ;
- les CNPJ actuels restent valides ;
- les deux formats coexisteront ;
- les 12 premiers caractères acceptent `A-Z0-9` ;
- les 2 derniers caractères restent numériques ;
- les chiffres de contrôle utilisent toujours le modulo 11 avec `ASCII - 48` ;
- même après juillet 2026, un nouveau CNPJ peut encore être entièrement numérique.

## Documents principaux du hub

- [Manifeste et principes d’implémentation](docs/manifesto-as-cnpj.md)
- [Sources officielles de la Receita Federal et règles](docs/fontes-oficiais-e-regras.md)
- [Feuille de route des dépôts](docs/roadmap-dos-repositorios.md)
- [Modèle de la famille de dépôts](docs/template-repos-da-familia.md)
- [Politique de sécurité](SECURITY.md)
- [Politique de contribution](CONTRIBUTING.md)

## Maintenance

Maintainer : `@0moura`  
Contact institutionnel : `ascnpj@0moura.io`

