# Historico da Extracao do AS-CNPJ JS

Idiomas: **Portugues (Brasil)** | [English](extracao-as-cnpj-js.en.md) | [Espanol](extracao-as-cnpj-js.es.md) | [Francais](extracao-as-cnpj-js.fr.md)

## Objetivo

Registrar como a semente inicial foi transformada em um repositorio dedicado:

- `https://github.com/as-cnpj/as-cnpj-js`

## Origem

A base inicial ficou em:

- `packages/js-reference/`

Esse diretorio foi a origem da primeira versao do repo `as-cnpj-js`.

## Estrutura que foi extraida

- `package.json`
- `README.md`
- `LICENSE`
- `CHANGELOG.md`
- `docs/api.md`
- `docs/decisoes.md`
- `src/`
- `test/`

## Processo usado

1. criar o repo `as-cnpj-js` na org;
2. copiar o conteudo selecionado de `packages/js-reference/` para a raiz do novo repo;
3. sincronizar os vetores compartilhados do hub;
4. ajustar CI, metadados e publicacao npm;
5. estabilizar README, testes e metadados publicos.

## Fonte de verdade durante e depois da extracao

- manifesto, governanca e especificacao continuam no hub `as-cnpj`;
- vetores compartilhados continuam versionados no hub;
- a biblioteca JS prova conformidade contra esses vetores.

## Estado atual

- o hub continua centralizando a especificacao;
- o repo `as-cnpj-js` centraliza codigo, testes e release da biblioteca JS.
