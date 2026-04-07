# Tests

Languages: [Portugues (Brasil)](README.md) | **English** | [Espanol](README.es.md) | [Francais](README.fr.md)

This folder mirrors the `as-cnpj-js` library test strategy inside the hub.

The goal is to keep the local copy aligned with:

- positive numeric and alphanumeric cases;
- negative cases;
- strict mode validation;
- API consistency;
- shared ecosystem vectors.

Run:

```bash
node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js
```
