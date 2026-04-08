# AS-CNPJ JS Reference

Idiomas: **Português (Brasil)** | [English](README.en.md) | [Español](README.es.md) | [Français](README.fr.md)

Esta pasta é a cópia de trabalho da biblioteca JavaScript/TypeScript do ecossistema AS-CNPJ dentro do hub.

O repositório dedicado da biblioteca é:

- `https://github.com/as-cnpj/as-cnpj-js`

## Comece por aqui

- [README público do as-cnpj-js](../../exports/as-cnpj-js/README.md)
- [API local](docs/api.md)
- [Estratégia de testes](test/README.md)
- [Checklist de release](docs/release-checklist.md)
- [Política de segurança](SECURITY.md)
- [Hub do ecossistema AS-CNPJ](../../README.md)

## Papel desta pasta dentro do hub

Ela existe para:

- manter uma semente local durante a evolução do ecossistema;
- facilitar comparação com vetores compartilhados do hub;
- servir de base enquanto o fluxo entre hub e repos derivados amadurece;
- espelhar o contrato funcional da biblioteca já publicada.

## O que esta referência cobre

Esta referência espelha a proposta do runtime público:

- validação de CNPJ legado numérico;
- validação de CNPJ alfanumérico;
- normalização;
- formatação;
- cálculo de dígitos verificadores;
- consistência com vetores compartilhados do ecossistema.

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

## Exemplos rápidos

Validação e normalização:

```js
import { isValid, normalize } from "@ascnpj/core";

isValid("12.ABC.345/01DE-35");
normalize("12.abc.345/01de-35");
```

Formatação para UI:

```js
import { format } from "@ascnpj/core";

format("12ABC34501DE35");
```

## Testes

```bash
node packages/js-reference/test/run.js
```

## Referência pública

Para uso público, issues, README final e evolução da biblioteca, use o repo dedicado:

- `https://github.com/as-cnpj/as-cnpj-js`

## Publicação

- pacote npm: [`@ascnpj/core`](https://www.npmjs.com/package/@ascnpj/core)
- workflow de release em `.github/workflows/release.yml`
- Trusted Publishing via GitHub Actions
