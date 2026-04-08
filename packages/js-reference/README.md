<div align="center">
  <img src="assets/brand/as-cnpj-logo-light.svg" alt="AS-CNPJ JS Reference" width="860" />
</div>

# AS-CNPJ JS Reference

Idiomas: **Português (Brasil)** | [English](README.en.md) | [Español](README.es.md) | [Français](README.fr.md)

Esta pasta é a semente local da biblioteca JavaScript/TypeScript do ecossistema AS-CNPJ dentro do hub.

Repositório público:

- `https://github.com/as-cnpj/as-cnpj-js`

Pacote publicado:

- [`@ascnpj/core`](https://www.npmjs.com/package/@ascnpj/core)

## Comece por aqui

- [README público do as-cnpj-js](../../exports/as-cnpj-js/README.md)
- [API local](docs/api.md)
- [Estratégia de testes](test/README.md)
- [Checklist de release](docs/release-checklist.md)
- [Política de segurança](SECURITY.md)
- [Hub do ecossistema AS-CNPJ](../../README.md)

## Papel desta pasta dentro do hub

- manter uma semente local durante a evolução do ecossistema;
- facilitar comparação com vetores compartilhados do hub;
- servir de base para fluxos de extração controlada;
- espelhar o contrato funcional da biblioteca já publicada.

## O que esta referência cobre

- validação de CNPJ legado numérico;
- validação de CNPJ alfanumérico;
- normalização;
- formatação;
- cálculo de dígitos verificadores;
- consistência com vetores compartilhados do ecossistema.

## API pública espelhada

- `normalize(value)`
- `isValid(value, options?)`
- `format(value, options?)`
- `assertValid(value, options?)`
- `calculateCheckDigits(base12)`
- `normalizeCNPJ(value)`
- `isValidCNPJ(value, options?)`
- `formatCNPJ(value, options?)`
- `assertValidCNPJ(value, options?)`
- `calculateCNPJCheckDigits(base12)`

## Exemplo rápido

```js
import { format, isValid, normalize } from "@ascnpj/core";

isValid("12.ABC.345/01DE-35");
normalize("12.abc.345/01de-35");
format("12ABC34501DE35");
```

## Testes

```bash
node packages/js-reference/test/run.js
```
