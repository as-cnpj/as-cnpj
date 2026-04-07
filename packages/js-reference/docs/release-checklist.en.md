# Release Checklist

Languages: [Portugues (Brasil)](release-checklist.md) | **English** | [Espanol](release-checklist.es.md) | [Francais](release-checklist.fr.md)

Mirrored checklist for the `as-cnpj-js` library.

It exists in the hub to keep the local copy aligned with the published repository.

## Public content

- README consistent with the real repository state.
- No leftover seed, extraction, or internal draft text.
- No broken links to hub, issues, homepage, or non-existent repositories.
- Changelog consistent with the release state.
- Package metadata consistent with the published repository.

## Technical validation

- `node --check packages/js-reference/src/cnpj.js`
- `node --check packages/js-reference/src/index.js`
- `node --check packages/js-reference/test/cnpj.test.js`
- `node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js`

## Publication

- `package.json` with correct `name`, `version`, `repository`, `bugs`, `homepage`, and `publishConfig`.
- License defined.
- Shared vectors present.
- API documented.
- Main decisions documented.
