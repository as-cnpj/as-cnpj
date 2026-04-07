# AS-CNPJ JS Reference

Idiomas: [Portugues (Brasil)](README.md) | [English](README.en.md) | **Espanol** | [Francais](README.fr.md)

Esta carpeta es la copia de trabajo de la biblioteca JavaScript/TypeScript del ecosistema AS-CNPJ dentro del hub.

El repositorio publico dedicado es:

- `https://github.com/as-cnpj/as-cnpj-js`

## Papel de esta carpeta dentro del hub

Existe para:

- mantener una semilla local durante la evolucion del ecosistema;
- facilitar la comparacion con los vectores compartidos del hub;
- servir de base mientras madura el flujo entre el hub y los repositorios derivados.

## API

- `normalize(value)`
- `isValid(value, options?)`
- `format(value, options?)`
- `assertValid(value, options?)`
- `calculateCheckDigits(base12)`

Aliases explicitos:

- `normalizeCNPJ(value)`
- `isValidCNPJ(value, options?)`
- `formatCNPJ(value, options?)`
- `assertValidCNPJ(value, options?)`
- `calculateCNPJCheckDigits(base12)`

## Pruebas

```bash
node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js
```

## Referencia publica

Para uso publico, README, issues y evolucion de la biblioteca, usa el repositorio dedicado:

- `https://github.com/as-cnpj/as-cnpj-js`
