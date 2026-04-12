# Roadmap dos Repositórios

Idiomas: **Português (Brasil)** | [English](roadmap-dos-repositorios.en.md) | [Español](roadmap-dos-repositorios.es.md) | [Français](roadmap-dos-repositorios.fr.md)

## Objetivo

Definir a ordem de maturação e o escopo de cada repositório da org `as-cnpj`.

## Fase Atual

A org já existe:

- https://github.com/as-cnpj

Os runtimes públicos já disponíveis são:

- https://github.com/as-cnpj/as-cnpj-js
- https://github.com/as-cnpj/as-cnpj-python

Agora o foco é:

- consolidar o hub como fonte de verdade do ecossistema;
- amadurecer `as-cnpj-js` após a publicação inicial de pacote;
- amadurecer `as-cnpj-python` após a publicação inicial no PyPI;
- replicar o contrato técnico nas próximas linguagens.

## Sequência Recomendada

### 1. `as-cnpj`

Escopo:

- manifesto;
- fontes oficiais;
- especificação;
- vetores de teste;
- governança;
- roadmap;
- templates.

Resultado esperado:

- virar a página principal da org;
- explicar o problema, a visão e a arquitetura do ecossistema.

### 2. `as-cnpj-js`

Estado atual:

- repositório publicado em `https://github.com/as-cnpj/as-cnpj-js`
- pacote npm já publicado como `@ascnpj/core`

Escopo desta fase:

- estabilizar a API pública inicial;
- manter testes automatizados;
- endurecer CI, governança e release process;
- manter a cadência de releases do pacote.

Resultado esperado:

- fixar o primeiro contrato idiomático do ecossistema;
- servir como base de comparação para os demais ports;
- chegar a uma primeira release de pacote com validação forte.

### 3. `as-cnpj-python`

Estado atual:

- repositório publicado em `https://github.com/as-cnpj/as-cnpj-python`
- pacote PyPI já publicado como `as-cnpj`

Escopo:

- port fiel do contrato funcional;
- API idiomática em Python;
- testes espelhando os vetores do hub;
- manter a cadência de releases do pacote no PyPI.

Resultado esperado:

- consolidar o repo `as-cnpj-python` com README forte, CI, governança e fluxo estável de release;
- manter equivalência funcional com `as-cnpj-js` sem copiar implementação.

### 4. `as-cnpj-java`

Escopo:

- foco corporativo;
- API clara para integração backend;
- cobertura forte do algoritmo e de formatação.

### 5. `as-cnpj-dotnet`

Escopo:

- foco em .NET moderno;
- API com boa semântica para serviços e apps corporativos.

### 6. `as-cnpj-go`

Escopo:

- foco em simplicidade, baixo overhead e ergonomia de pacote.

## Critério para Abrir um Novo Repo

Abrir um novo repo somente quando houver:

- especificação suficiente no hub;
- template de repo aplicado;
- vetores de teste prontos;
- escopo da linguagem definido;
- disponibilidade para manter o repo depois da criação.

## Critério para Publicar Pacote

Publicar pacote somente quando houver:

- README forte;
- testes automatizados verdes;
- changelog inicial;
- licença definida;
- API mínima estabilizada;
- exemplos de uso.

## Capacidades transversais recomendadas

Além da abertura de novos runtimes, o ecossistema deve evoluir com:

- validação em lote;
- normalização e formatação em lote;
- ferramentas públicas no site;
- guias de migração e armazenamento;
- suporte explícito a homologação e saneamento de base.

## Regra Operacional

Não abrir vários repos vazios ao mesmo tempo.

Abrir um repo, estabilizar, documentar, publicar, e só depois seguir para o próximo.
