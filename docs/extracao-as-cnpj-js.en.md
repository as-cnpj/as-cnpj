# AS-CNPJ JS Extraction History

Languages: [Português (Brasil)](extracao-as-cnpj-js.md) | **English** | [Español](extracao-as-cnpj-js.es.md) | [Français](extracao-as-cnpj-js.fr.md)

## Goal

Record how the initial seed was transformed into a dedicated repository:

- `https://github.com/as-cnpj/as-cnpj-js`

## Origin

The initial base lived in:

- `packages/js-reference/`

That directory was the origin of the first version of the `as-cnpj-js` repository.

## Structure that was extracted

- `package.json`
- `README.md`
- `LICENSE`
- `CHANGELOG.md`
- `docs/api.md`
- `docs/decisoes.md`
- `src/`
- `test/`

## Process used

1. create the `as-cnpj-js` repository in the org;
2. copy selected content from `packages/js-reference/` to the root of the new repo;
3. sync the hub shared vectors;
4. adjust CI, metadata, and npm publication;
5. stabilize README, tests, and public metadata.

## Source of truth during and after extraction

- manifesto, governance, and specification remain in the `as-cnpj` hub;
- shared vectors remain versioned in the hub;
- the JS library proves conformance against those vectors.

## Current state

- the hub continues to centralize the specification;
- the `as-cnpj-js` repository centralizes JS library code, tests, and releases.
