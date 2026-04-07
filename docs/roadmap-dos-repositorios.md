# Roadmap dos Repositorios

Idiomas: **Português (Brasil)** | [English](roadmap-dos-repositorios.en.md) | [Español](roadmap-dos-repositorios.es.md) | [Français](roadmap-dos-repositorios.fr.md)

## Objetivo

Definir a ordem de maturacao e o escopo de cada repositorio da org `as-cnpj`.

## Fase atual

A org ja existe:

- https://github.com/as-cnpj

O primeiro repositorio derivado tambem ja existe:

- https://github.com/as-cnpj/as-cnpj-js

Agora o foco e:

- consolidar o hub como fonte de verdade do ecossistema;
- amadurecer `as-cnpj-js` ate publicacao de pacote;
- replicar o contrato tecnico nas proximas linguagens.

## Sequencia recomendada

### 1. `as-cnpj`

Escopo:

- manifesto;
- fontes oficiais;
- especificacao;
- vetores de teste;
- governanca;
- roadmap;
- templates.

Resultado esperado:

- virar a pagina principal da org;
- explicar o problema, a visao e a arquitetura do ecossistema.

### 2. `as-cnpj-js`

Estado atual:

- repositorio publicado em `https://github.com/as-cnpj/as-cnpj-js`

Escopo desta fase:

- estabilizar a API publica inicial;
- manter testes automatizados;
- endurecer CI, governanca e release process;
- preparar empacotamento para npm.

Resultado esperado:

- fixar o primeiro contrato idiomatico do ecossistema;
- servir como base de comparacao para os demais ports;
- chegar a uma primeira release de pacote com validacao forte.

### 3. `as-cnpj-python`

Escopo:

- port fiel do contrato funcional;
- API idiomatica em Python;
- testes espelhando os vetores do hub.

### 4. `as-cnpj-java`

Escopo:

- foco corporativo;
- API clara para integracao backend;
- cobertura forte do algoritmo e de formatacao.

### 5. `as-cnpj-dotnet`

Escopo:

- foco em .NET moderno;
- API com boa semantica para servicos e apps corporativos.

### 6. `as-cnpj-go`

Escopo:

- foco em simplicidade, baixo overhead e ergonomia de pacote.

## Criterio para abrir um novo repo

Abrir um novo repo somente quando houver:

- especificacao suficiente no hub;
- template de repo aplicado;
- vetores de teste prontos;
- escopo da linguagem definido;
- disponibilidade para manter o repo depois da criacao.

## Criterio para publicar pacote

Publicar pacote somente quando houver:

- README forte;
- testes automatizados verdes;
- changelog inicial;
- licenca definida;
- API minima estabilizada;
- exemplos de uso.

## Regra operacional

Nao abrir varios repos vazios ao mesmo tempo.

Abrir um repo, estabilizar, documentar, publicar, e so depois seguir para o proximo.
