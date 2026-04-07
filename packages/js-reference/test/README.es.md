# Pruebas

Idiomas: [Portugues (Brasil)](README.md) | [English](README.en.md) | **Espanol** | [Francais](README.fr.md)

Esta carpeta replica la estrategia de pruebas de la biblioteca `as-cnpj-js` dentro del hub.

El objetivo es mantener la copia local alineada con:

- casos positivos numericos y alfanumericos;
- casos negativos;
- validacion en modo estricto;
- consistencia de la API;
- vectores compartidos del ecosistema.

Ejecucion:

```bash
node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js
```
