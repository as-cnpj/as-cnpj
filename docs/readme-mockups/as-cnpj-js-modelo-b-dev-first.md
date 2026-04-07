# AS-CNPJ JS

Idiomas: **Português (Brasil)** | [English](../../exports/as-cnpj-js/README.en.md) | [Español](../../exports/as-cnpj-js/README.es.md) | [Français](../../exports/as-cnpj-js/README.fr.md)

Valide, normalize, formate e calcule DV de CNPJ numérico e alfanumérico com uma API curta.

Repositório: `https://github.com/as-cnpj/as-cnpj-js`

## TL;DR

- suporta CNPJ legado e alfanumérico;
- aceita entrada com e sem máscara;
- oferece modo permissivo e modo estrito;
- usa módulo 11 com conversão `ASCII - 48`;
- já possui testes automatizados e vetores compartilhados.

## Instalação

Publicação em registry ainda não foi feita.

Até a primeira release, use o repositório como referência técnica e para integração local.

## Exemplo rápido

```js
import {
  assertValid,
  format,
  isValid,
  normalize
} from "@ascnpj/core";

normalize("12.abc.345/01de-35");
isValid("12.ABC.345/01DE-35");
format("12ABC34501DE35");
assertValid("12.ABC.345/01DE-35");
```

## Quando usar cada função

- `normalize`: sanitiza e normaliza, mas não garante validade;
- `isValid`: responde `true` ou `false`;
- `format`: retorna a versão mascarada quando a entrada é válida;
- `assertValid`: falha com `TypeError` quando a entrada é inválida;
- `calculateCheckDigits`: calcula os 2 dígitos finais a partir da base de 12 caracteres.

## API

Funções curtas:

- `normalize`
- `isValid`
- `format`
- `assertValid`
- `calculateCheckDigits`

Aliases explícitos:

- `normalizeCNPJ`
- `isValidCNPJ`
- `formatCNPJ`
- `assertValidCNPJ`
- `calculateCNPJCheckDigits`

Detalhamento completo:

- [API](../../exports/as-cnpj-js/docs/api.md)

## Regras de validação

- os 12 primeiros caracteres aceitam `A-Z0-9`;
- os 2 últimos continuam numéricos;
- a entrada é normalizada para caixa alta;
- a biblioteca rejeita repetições triviais inválidas;
- o cálculo do DV usa módulo 11 com `ASCII - 48`.

## Modo estrito

Se você precisa de contrato de entrada mais rígido, use `strict`.

Formatos aceitos nesse modo:

- `12ABC34501DE35`
- `12.ABC.345/01DE-35`

## Como rodar os testes

```bash
node --test --experimental-test-isolation=none test/cnpj.test.js
```

Documentação dos testes:

- [Estratégia de testes](../../exports/as-cnpj-js/test/README.md)

## O que os testes buscam provar

- validade do exemplo oficial;
- compatibilidade com CNPJ legado;
- comportamento com máscara e sem máscara;
- comportamento do modo estrito;
- consistência entre aliases;
- conformidade com vetores compartilhados.

## Links úteis

- [Checklist de release](../../exports/as-cnpj-js/docs/release-checklist.md)
- [Política de segurança](../../exports/as-cnpj-js/SECURITY.md)
- [Hub do ecossistema AS-CNPJ](../../README.md)

## Status do projeto

- repositório publicado;
- pacote em fase inicial `0.x`;
- ainda sem publicação em registry;
- pronto para evolução orientada por testes e documentação.
