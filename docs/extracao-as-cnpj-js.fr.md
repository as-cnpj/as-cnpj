# Historique de l'extraction de AS-CNPJ JS

Langues: [Portugues (Brasil)](extracao-as-cnpj-js.md) | [English](extracao-as-cnpj-js.en.md) | [Espanol](extracao-as-cnpj-js.es.md) | **Francais**

## Objectif

Enregistrer comment la graine initiale a ete transformee en depot dedie:

- `https://github.com/as-cnpj/as-cnpj-js`

## Origine

La base initiale se trouvait dans:

- `packages/js-reference/`

Ce repertoire a ete l'origine de la premiere version du repo `as-cnpj-js`.

## Structure extraite

- `package.json`
- `README.md`
- `LICENSE`
- `CHANGELOG.md`
- `docs/api.md`
- `docs/decisoes.md`
- `src/`
- `test/`

## Processus utilise

1. creer le repo `as-cnpj-js` dans l'org;
2. copier le contenu selectionne de `packages/js-reference/` a la racine du nouveau repo;
3. synchroniser les vecteurs partages du hub;
4. ajuster la CI, les metadonnees et la publication npm;
5. stabiliser README, tests et metadonnees publiques.

## Source de verite pendant et apres l'extraction

- manifeste, gouvernance et specification restent dans le hub `as-cnpj`;
- les vecteurs partages restent versionnes dans le hub;
- la bibliotheque JS prouve sa conformite a ces vecteurs.

## Etat actuel

- le hub continue de centraliser la specification;
- le repo `as-cnpj-js` centralise le code, les tests et les releases de la bibliotheque JS.
