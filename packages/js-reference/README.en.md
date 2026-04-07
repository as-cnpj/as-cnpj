# AS-CNPJ JS Reference

Languages: [Português (Brasil)](README.md) | **English** | [Español](README.es.md) | [Français](README.fr.md)

This folder is the working copy of the AS-CNPJ JavaScript/TypeScript library inside the hub.

The dedicated public repository is:

- `https://github.com/as-cnpj/as-cnpj-js`

## Start here

- [Local API](docs/api.md)
- [Test strategy](test/README.md)
- [Release checklist](docs/release-checklist.md)
- [Security policy](SECURITY.md)
- [Public as-cnpj-js README](../../exports/as-cnpj-js/README.md)

## Role of this folder inside the hub

It exists to:

- keep a local seed during ecosystem evolution;
- make comparison with the shared hub vectors easier;
- serve as a base while the flow between hub and derived repositories matures.

## Mirrored public API

Main functions:

- `normalize(value)`
- `isValid(value, options?)`
- `format(value, options?)`
- `assertValid(value, options?)`
- `calculateCheckDigits(base12)`

Explicit aliases:

- `normalizeCNPJ(value)`
- `isValidCNPJ(value, options?)`
- `formatCNPJ(value, options?)`
- `assertValidCNPJ(value, options?)`
- `calculateCNPJCheckDigits(base12)`

## Tests

```bash
node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js
```

## Public reference

For public usage, README, issues, and library evolution, use the dedicated repository:

- `https://github.com/as-cnpj/as-cnpj-js`

## Publication

- npm package: `@ascnpj/core`
- release workflow located at `.github/workflows/release.yml`
- publication with `provenance` via GitHub Release
