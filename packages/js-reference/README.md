# AS-CNPJ JS Reference

Idiomas: **Portugues (Brasil)** | [English](README.en.md) | [Espanol](README.es.md) | [Francais](README.fr.md)

Esta pasta e a copia de trabalho da biblioteca JavaScript/TypeScript do ecossistema AS-CNPJ.

O repositorio dedicado da biblioteca agora e:

- `https://github.com/as-cnpj/as-cnpj-js`

## Referencias rapidas

- [API local](docs/api.md)
- [Estrategia de testes](test/README.md)
- [Checklist de release](docs/release-checklist.md)
- [Politica de seguranca](SECURITY.md)

## Papel desta pasta dentro do hub

Ela existe para:

- manter uma semente local durante a evolucao do ecossistema;
- facilitar comparacao com vetores compartilhados do hub;
- servir de base enquanto o fluxo entre hub e repos derivados amadurece.

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

## Testes

```bash
node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js
```

## Fonte oficial

Para uso publico, README, issues e evolucao da biblioteca, use o repo dedicado:

- `https://github.com/as-cnpj/as-cnpj-js`
