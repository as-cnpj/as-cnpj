# Tests

Langues: [Portugues (Brasil)](README.md) | [English](README.en.md) | [Espanol](README.es.md) | **Francais**

Ce dossier reproduit la strategie de tests de la bibliotheque `as-cnpj-js` dans le hub.

L'objectif est de garder la copie locale alignee avec:

- cas positifs numeriques et alphanumeriques;
- cas negatifs;
- validation en mode strict;
- coherence de l'API;
- vecteurs partages de l'ecosysteme.

Execution:

```bash
node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js
```
