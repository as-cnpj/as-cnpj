# AS-CNPJ JS

Idiomas: **Português (Brasil)** | [English](../../exports/as-cnpj-js/README.en.md) | [Español](../../exports/as-cnpj-js/README.es.md) | [Français](../../exports/as-cnpj-js/README.fr.md)

Biblioteca JavaScript e TypeScript do ecossistema AS-CNPJ.

O objetivo deste repositório não é apenas validar CNPJ em JS. O objetivo é manter uma implementação autoral, auditável e coerente com o contrato central do projeto.

Repositório: `https://github.com/as-cnpj/as-cnpj-js`

## Por que este projeto existe

A transição do CNPJ para o formato alfanumérico exige mais do que um regex novo.

Ela exige:

- regra de cálculo correta;
- previsibilidade de API;
- compatibilidade com legado;
- documentação clara;
- consistência entre linguagens.

O `as-cnpj-js` é a implementação JavaScript/TypeScript dessa tese.

## Papel deste repositório dentro da org

O `as-cnpj-js` centraliza:

- código da biblioteca JS/TS;
- testes da implementação;
- documentação específica da API;
- processo de release da biblioteca.

O hub `as-cnpj` centraliza:

- manifesto;
- documentação oficial consolidada;
- vetores de teste compartilhados;
- governança do ecossistema.

## O que a biblioteca entrega

- validação de CNPJ numérico;
- validação de CNPJ alfanumérico;
- normalização para formato canônico;
- formatação mascarada;
- cálculo de dígitos verificadores;
- modo estrito opcional.

## Contrato da implementação

- os 12 primeiros caracteres aceitam `A-Z0-9`;
- os 2 últimos permanecem numéricos;
- o cálculo do DV usa módulo 11 com `ASCII - 48`;
- a entrada é normalizada para caixa alta;
- formatos com máscara e sem máscara coexistem;
- repetições triviais inválidas são rejeitadas.

## Interface pública

Funções principais:

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

## Exemplo de uso

```js
import { format, isValid, normalize } from "@ascnpj/core";

isValid("12.ABC.345/01DE-35");
normalize("12.abc.345/01de-35");
format("12ABC34501DE35");
```

## Provas de qualidade

Este repositório não depende apenas de descrição textual.

Ele se apoia em:

- testes automatizados;
- documentação explícita da API;
- vetores compartilhados no hub;
- checklist de publicação;
- política formal de segurança.

Referências rápidas:

- [API](../../exports/as-cnpj-js/docs/api.md)
- [Testes](../../exports/as-cnpj-js/test/README.md)
- [Checklist de release](../../exports/as-cnpj-js/docs/release-checklist.md)
- [Segurança](../../exports/as-cnpj-js/SECURITY.md)

## Estado atual

- repositório público;
- pacote em fase inicial `0.x`;
- publicação em registry ainda pendente.

## Relação com o ecossistema

Hub central:

- `https://github.com/as-cnpj/as-cnpj`

Org:

- `https://github.com/as-cnpj`

O `as-cnpj-js` deve ser entendido como parte de um conjunto maior de bibliotecas autorais convergentes, e não como uma peça isolada.

## Manutenção

Maintainer:

- `@0moura`

Contato institucional:

- `ascnpj@0moura.io`
