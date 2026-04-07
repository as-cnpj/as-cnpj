# Histórico da Extração do AS-CNPJ JS

Idiomas: **Português (Brasil)** | [English](extracao-as-cnpj-js.en.md) | [Español](extracao-as-cnpj-js.es.md) | [Français](extracao-as-cnpj-js.fr.md)

## Objetivo

Registrar como a semente inicial foi transformada em um repositório dedicado:

- `https://github.com/as-cnpj/as-cnpj-js`

## Origem

A base inicial ficou em:

- `packages/js-reference/`

Esse diretório foi a origem da primeira versão do repo `as-cnpj-js`.

## Estrutura que Foi Extraída

- `package.json`
- `README.md`
- `LICENSE`
- `CHANGELOG.md`
- `docs/api.md`
- `docs/decisoes.md`
- `src/`
- `test/`

## Processo Usado

1. criar o repo `as-cnpj-js` na org;
2. copiar o conteúdo selecionado de `packages/js-reference/` para a raiz do novo repo;
3. sincronizar os vetores compartilhados do hub;
4. ajustar CI, metadados e publicação npm;
5. estabilizar README, testes e metadados públicos.

## Fonte de Verdade Durante e Depois da Extração

- manifesto, governança e especificação continuam no hub `as-cnpj`;
- vetores compartilhados continuam versionados no hub;
- a biblioteca JS prova conformidade contra esses vetores.

## Estado Atual

- o hub continua centralizando a especificação;
- o repo `as-cnpj-js` centraliza código, testes e release da biblioteca JS.
