# AS-CNPJ JS Reference

Langues : [Português (Brasil)](README.md) | [English](README.en.md) | [Español](README.es.md) | **Français**

Ce dossier est la copie de travail de la bibliothèque JavaScript/TypeScript de l'écosystème AS-CNPJ dans le hub.

Le dépôt public dédié est :

- `https://github.com/as-cnpj/as-cnpj-js`

## Commencez ici

- [API locale](docs/api.md)
- [Stratégie de tests](test/README.md)
- [Checklist de release](docs/release-checklist.md)
- [Politique de sécurité](SECURITY.md)
- [README public de as-cnpj-js](../../exports/as-cnpj-js/README.md)

## Rôle de ce dossier dans le hub

Il existe pour :

- conserver une graine locale pendant l'évolution de l'écosystème ;
- faciliter la comparaison avec les vecteurs partagés du hub ;
- servir de base pendant que le flux entre le hub et les dépôts dérivés se stabilise.

## API publique miroir

Fonctions principales :

- `normalize(value)`
- `isValid(value, options?)`
- `format(value, options?)`
- `assertValid(value, options?)`
- `calculateCheckDigits(base12)`

Aliases explicites :

- `normalizeCNPJ(value)`
- `isValidCNPJ(value, options?)`
- `formatCNPJ(value, options?)`
- `assertValidCNPJ(value, options?)`
- `calculateCNPJCheckDigits(base12)`

## Tests

```bash
node packages/js-reference/test/run.js
```

## Référence publique

Pour l'usage public, le README, les issues et l'évolution de la bibliothèque, utilisez le dépôt dédié :

- `https://github.com/as-cnpj/as-cnpj-js`

## Publication

- package npm : [`@ascnpj/core`](https://www.npmjs.com/package/@ascnpj/core)
- workflow de release situé dans `.github/workflows/release.yml`
- Trusted Publishing via GitHub Actions
