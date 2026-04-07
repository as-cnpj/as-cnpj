# Template de README Executivo da Família

Este documento transforma o modelo aprovado do `as-cnpj-js` em um template reutilizável para os próximos repositórios da org.

## Objetivo

Padronizar a abertura pública dos repos da família com uma estrutura que:

- passe confiança técnica;
- facilite adoção rápida;
- conecte o repo ao ecossistema;
- reduza divergência editorial entre linguagens.

## Como usar

Substitua os placeholders abaixo antes de publicar:

- `<NOME_REPO>`
- `<LINGUAGEM>`
- `<URL_REPO>`
- `<URL_HUB>`
- `<PACOTE_OU_STATUS_DE_INSTALACAO>`
- `<COMANDO_TESTE>`
- `<HANDLE_MAINTAINER>`
- `<CONTATO_INSTITUCIONAL>`

## Template

```md
# <NOME_REPO>

Idiomas: **Português (Brasil)** | [English](README.en.md) | [Español](README.es.md) | [Français](README.fr.md)

Biblioteca autoral para validação de CNPJ numérico e alfanumérico em <LINGUAGEM>.

Repositório: `<URL_REPO>`

## Status

- repositório público e ativo;
- pacote em fase inicial `0.x`;
- <PACOTE_OU_STATUS_DE_INSTALACAO>;
- algoritmo já validado com testes automatizados e vetores compartilhados do ecossistema.

## Comece por aqui

- [API da biblioteca](docs/api.md)
- [Estratégia de testes](test/README.md)
- [Checklist de release](docs/release-checklist.md)
- [Política de segurança](SECURITY.md)
- [Hub do ecossistema AS-CNPJ](<URL_HUB>)

## O que esta biblioteca resolve

Esta biblioteca existe para cobrir, com uma única API, a coexistência entre:

- CNPJ legado numérico;
- CNPJ alfanumérico previsto pela Receita Federal para julho de 2026;
- entradas com máscara e sem máscara;
- fluxos permissivos e fluxos com validação estrita.

Ela implementa:

- validação;
- normalização;
- formatação;
- cálculo de dígitos verificadores;
- consistência com vetores compartilhados do ecossistema.

## Garantias centrais

- aceita `A-Z0-9` nos 12 primeiros caracteres;
- mantém os 2 dígitos verificadores como numéricos;
- usa módulo 11 com conversão `ASCII - 48`;
- normaliza entrada para caixa alta;
- rejeita repetições triviais inválidas;
- suporta modo permissivo e modo estrito.

## API pública

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

## Exemplo mínimo

```<BLOCO_DA_LINGUAGEM>
<EXEMPLO_MINIMO>
```

## Modo estrito

Quando `strict` está ativo, a entrada precisa chegar em um dos formatos canônicos:

- `12ABC34501DE35`
- `12.ABC.345/01DE-35`

Exemplo:

```<BLOCO_DA_LINGUAGEM>
<EXEMPLO_STRICT>
```

## Testes

Execução direta:

```bash
<COMANDO_TESTE>
```

O conjunto de testes cobre:

- casos positivos numéricos;
- casos positivos alfanuméricos;
- casos negativos;
- modo estrito;
- consistência entre aliases;
- vetores compartilhados do hub.

## Vetores compartilhados

O `<NOME_REPO>` não define a verdade sozinho.

O contrato do ecossistema também depende de:

- vetores compartilhados no hub;
- regras documentadas a partir das fontes oficiais;
- convergência entre implementações futuras em outras linguagens.

## Ecossistema

Org GitHub:

- `https://github.com/as-cnpj`

Hub do projeto:

- manifesto;
- documentação consolidada;
- vetores compartilhados;
- governança entre linguagens.

## Manutenção

Maintainer:

- `<HANDLE_MAINTAINER>`

Contato institucional:

- `<CONTATO_INSTITUCIONAL>`
```

## Regras de adaptação

Ao portar este template:

- preserve a ordem das seções principais;
- só remova seções se houver motivo real;
- ajuste o exemplo para a linguagem, não para a preferência pessoal do autor;
- mantenha a seção de vetores compartilhados;
- mantenha a ligação explícita com o hub `as-cnpj`.

## O que pode variar

Pode variar por linguagem:

- sintaxe dos exemplos;
- nome do pacote;
- comando de teste;
- nuances de instalação;
- existência ou não de modo estrito público.

## O que não deve variar sem decisão do hub

- tese do projeto;
- regra dos vetores compartilhados;
- contrato conceitual da API;
- posição do repo dentro do ecossistema;
- compromisso com a documentação oficial.
