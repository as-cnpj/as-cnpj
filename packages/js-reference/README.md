# AS-CNPJ JS Reference

Idiomas: **Português (Brasil)** | [English](README.en.md) | [Español](README.es.md) | [Français](README.fr.md)

Esta pasta é a cópia de trabalho da biblioteca JavaScript/TypeScript do ecossistema AS-CNPJ dentro do hub.

O repositório dedicado da biblioteca é:

- `https://github.com/as-cnpj/as-cnpj-js`

## Comece por aqui

- [API local](docs/api.md)
- [Estratégia de testes](test/README.md)
- [Checklist de release](docs/release-checklist.md)
- [Política de segurança](SECURITY.md)
- [README público do as-cnpj-js](../../exports/as-cnpj-js/README.md)

## Papel desta pasta dentro do hub

Ela existe para:

- manter uma semente local durante a evolução do ecossistema;
- facilitar comparação com vetores compartilhados do hub;
- servir de base enquanto o fluxo entre hub e repos derivados amadurece.

## API pública espelhada

Funções principais:

- `normalize(value)`
- `isValid(value, options?)`
- `format(value, options?)`
- `assertValid(value, options?)`
- `calculateCheckDigits(base12)`

Aliases explícitos:

- `normalizeCNPJ(value)`
- `isValidCNPJ(value, options?)`
- `formatCNPJ(value, options?)`
- `assertValidCNPJ(value, options?)`
- `calculateCNPJCheckDigits(base12)`

## Testes

```bash
node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js
```

## Referência pública

Para uso público, README, issues e evolução da biblioteca, use o repo dedicado:

- `https://github.com/as-cnpj/as-cnpj-js`

## Publicação

- pacote npm: `@ascnpj/core`
- workflow de release previsto em `.github/workflows/release.yml`
- publicação com `provenance` via GitHub Release
