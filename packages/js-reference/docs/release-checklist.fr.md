# Checklist de release

Langues: [Portugues (Brasil)](release-checklist.md) | [English](release-checklist.en.md) | [Espanol](release-checklist.es.md) | **Francais**

Checklist miroir de la bibliotheque `as-cnpj-js`.

Il existe dans le hub pour garder la copie locale alignee avec le depot publie.

## Contenu public

- README coherent avec l'etat reel du repo.
- Aucun texte residuel de graine, d'extraction ou de brouillon interne.
- Aucun lien casse vers le hub, les issues, la homepage ou des repos inexistants.
- Changelog coherent avec l'etat de la release.
- Metadonnees du package coherentes avec le depot publie.

## Validation technique

- `node --check packages/js-reference/src/cnpj.js`
- `node --check packages/js-reference/src/index.js`
- `node --check packages/js-reference/test/cnpj.test.js`
- `node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js`

## Publication

- `package.json` avec `name`, `version`, `repository`, `bugs`, `homepage` et `publishConfig` corrects.
- Licence definie.
- Vecteurs partages presents.
- API documentee.
- Principales decisions documentees.
