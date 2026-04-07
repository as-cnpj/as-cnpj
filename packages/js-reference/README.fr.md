# AS-CNPJ JS Reference

Langues: [Portugues (Brasil)](README.md) | [English](README.en.md) | [Espanol](README.es.md) | **Francais**

Ce dossier est la copie de travail de la bibliotheque JavaScript/TypeScript de l'ecosysteme AS-CNPJ dans le hub.

Le depot public dedie est:

- `https://github.com/as-cnpj/as-cnpj-js`

## Role de ce dossier dans le hub

Il existe pour:

- conserver une graine locale pendant l'evolution de l'ecosysteme;
- faciliter la comparaison avec les vecteurs partages du hub;
- servir de base pendant que le flux entre le hub et les depots derives se stabilise.

## API

- `normalize(value)`
- `isValid(value, options?)`
- `format(value, options?)`
- `assertValid(value, options?)`
- `calculateCheckDigits(base12)`

Aliases explicites:

- `normalizeCNPJ(value)`
- `isValidCNPJ(value, options?)`
- `formatCNPJ(value, options?)`
- `assertValidCNPJ(value, options?)`
- `calculateCNPJCheckDigits(base12)`

## Tests

```bash
node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js
```

## Reference publique

Pour l'usage public, le README, les issues et l'evolution de la bibliotheque, utilisez le depot dedie:

- `https://github.com/as-cnpj/as-cnpj-js`
