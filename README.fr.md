# AS-CNPJ

Langues : [Português (Brasil)](README.md) | [English](README.en.md) | [Español](README.es.md) | **Français**

Écosystème auteur de bibliothèques pour le CNPJ numérique et alphanumérique, avec un comportement partagé entre langages, des vecteurs officiels et une documentation centralisée.

Site : https://as-cnpj.org  
Organisation GitHub : https://github.com/as-cnpj

## Bibliothèques publiées

- [as-cnpj-js](https://github.com/as-cnpj/as-cnpj-js) | JavaScript/TypeScript | paquet npm [`@ascnpj/core`](https://www.npmjs.com/package/@ascnpj/core)
- [as-cnpj-python](https://github.com/as-cnpj/as-cnpj-python) | Python | paquet PyPI [`as-cnpj`](https://pypi.org/project/as-cnpj/)

## Ce que ce hub centralise

- le manifeste et les principes de l'écosystème ;
- les sources officielles de la Receita Federal ;
- les vecteurs partagés et leur schema ;
- la gouvernance, la sécurité et l'audit ;
- le catalogue des dépôts de la famille.

## Commencer ici

- [Manifeste et principes](docs/manifesto-as-cnpj.md)
- [Sources officielles et règles métier](docs/fontes-oficiais-e-regras.md)
- [Architecture et migration vers le CNPJ alphanumérique](docs/arquitetura-e-migracao.md)
- [Guide pratique de stockage et migration](docs/guia-pratico-de-armazenamento-e-migracao.fr.md)
- [Feuille de route des outils et capacités](docs/roadmap-de-ferramentas-e-capacidades.fr.md)
- [Vecteurs partagés](vectors/cnpj.json)
- [Schema des vecteurs](vectors/cnpj.schema.json)
- [Portefeuille de l'écosystème](docs/portfolio-de-bibliotecas.md)
- [Politique de sécurité](SECURITY.md)
- [Audit de sécurité](AUDIT.md)

## Faits officiels centraux

- l'échéance consultée reste **juillet 2026** ;
- les CNPJ actuels restent valides ;
- les deux formats coexistent ;
- les 12 premières positions acceptent `A-Z0-9` ;
- les 2 chiffres de contrôle restent numériques ;
- le calcul du DV continue d'utiliser le modulo 11 avec conversion `ASCII - 48`.

## Famille de dépôts

| Repo | Rôle | Statut |
| --- | --- | --- |
| `as-cnpj` | Hub central, manifeste, vecteurs, audit et gouvernance | Actuel |
| `as-cnpj-js` | Bibliothèque auteur pour JavaScript/TypeScript | Publié |
| `as-cnpj-python` | Bibliothèque auteur pour Python | Publié sur PyPI |
| `as-cnpj-java` | Bibliothèque auteur pour Java | Planifié |
| `as-cnpj-dotnet` | Bibliothèque auteur pour C# /.NET | Planifié |
| `as-cnpj-go` | Bibliothèque auteur pour Go | Planifié |

## Prochain focus recommandé

- guide pratique de stockage et migration ;
- outils publics sur le site ;
- validation par lot dans les bibliothèques ;
- `as-cnpj-java` comme prochain runtime.

## Maintenance

Maintainer : **@0moura**  
Contact institutionnel : **ascnpj@0moura.io**

- [Site et documentation](https://as-cnpj.org)
- [Communauté et soutiens](https://as-cnpj.org/fr/community)
- [Contribution](CONTRIBUTING.md)
- [Politique de sécurité](SECURITY.md)
