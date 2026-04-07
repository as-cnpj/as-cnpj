# Testes

Idiomas: **Portugues (Brasil)** | [English](README.en.md) | [Espanol](README.es.md) | [Francais](README.fr.md)

Esta pasta replica a estrategia de testes da biblioteca `as-cnpj-js` dentro do hub.

O objetivo e manter a copia local alinhada com:

- casos positivos numericos e alfanumericos;
- casos negativos;
- validacao em modo estrito;
- consistencia da API;
- vetores compartilhados do ecossistema.

Execucao:

```bash
node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js
```
