# Audit de securite

Langues: [Português (Brasil)](AUDIT.md) | [English](AUDIT.en.md) | [Español](AUDIT.es.md) | **Français**

Derniere mise a jour: **2026-04-07**

Ce document resume la posture de securite et les resultats d'audit de l'ecosysteme AS-CNPJ, avec un focus principal sur la bibliotheque JavaScript (`@ascnpj/core`).

## Resume

- bibliotheque de calcul pur ;
- zero dependance de runtime ;
- zero acces reseau, filesystem ou variables d'environnement en runtime ;
- regex en temps lineaire ;
- garde-fous d'entree pour type, taille, plage ASCII et repetitions triviales ;
- CI prete pour la syntaxe, les tests et la verification du contenu du package npm.

## Protections principales

- type guards dans les fonctions publiques ;
- limite maximale de taille d'entree ;
- garde ASCII printable avant traitement ;
- rejet des repetitions triviales ;
- aucun script de lifecycle dans le package npm ;
- `.env` et `.npmrc` ignores par Git.

## Notes supply chain

- la CI fait partie du gate recommande de publication ;
- le 2FA npm reste de la responsabilite du maintainer ;
- la publication avec provenance est recommandee dans l'automatisation de release.

## Reference complete

Pour l'audit complet dans la langue de base du projet, consultez [AUDIT.md](AUDIT.md).
