# Modèle de Dépôts de la Famille

Langues : [Português (Brasil)](template-repos-da-familia.md) | [English](template-repos-da-familia.en.md) | [Español](template-repos-da-familia.es.md) | **Français**

Tout dépôt de l’écosystème doit contenir au minimum :

- `README.md`
- `LICENSE`
- `CHANGELOG.md`
- `SECURITY.md`
- `CONTRIBUTING.md`
- `docs/`
- `src/`
- `test/`

Comportement minimal :

- supporter le CNPJ numérique et alphanumérique ;
- accepter les entrées avec ou sans masque ;
- garder des chiffres de contrôle numériques ;
- proposer un mode strict quand pertinent ;
- rejeter les caractères invalides.

Tests minimaux :

- exemple officiel de la Receita ;
- cas numérique valide ;
- cas alphanumérique valide ;
- chiffre de contrôle invalide ;
- entrée vide ;
- type invalide quand applicable ;
- normalisation des minuscules ;
- répétitions triviales.

