# AS-CNPJ

Idiomas: **Português (Brasil)** | [English](README.en.md) | [Español](README.es.md) | [Français](README.fr.md)

Ecossistema autoral de bibliotecas para CNPJ numerico e alfanumerico.

Org GitHub: https://github.com/as-cnpj

## Visao

O projeto **AS-CNPJ** existe para resolver um problema real de engenharia: a transicao do CNPJ para o formato alfanumerico, anunciada pela Receita Federal para **julho de 2026**, exige implementacoes corretas, auditaveis e consistentes entre linguagens.

Este repositorio `as-cnpj` e o **hub central** da org. Ele nao e a biblioteca final de producao de uma linguagem especifica. Ele centraliza:

- posicionamento do ecossistema;
- documentacao oficial consolidada;
- regras tecnicas compartilhadas;
- vetores de teste e contratos de comportamento;
- governanca dos repositorios da familia;
- copias locais de referencia quando isso ajudar na evolucao dos repos derivados.

## Modelo do ecossistema

O modelo adotado agora e simples:

- **1 org**: `as-cnpj`
- **1 repo central**: `as-cnpj`
- **1 repo por biblioteca**: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

Esse modelo reduz mistura entre documentacao, governanca e codigo de runtime.

## Principios

- implementacao propria, sem copiar codigo de terceiros;
- base oficial da Receita Federal;
- mesmo comportamento funcional entre linguagens;
- testes automatizados como contrato;
- API pequena e auditavel;
- suporte simultaneo ao CNPJ legado e ao alfanumerico.

## Fatos oficiais que impactam todas as libs

- o marco oficial consultado continua sendo **julho de 2026**;
- os CNPJs atuais continuam validos;
- os dois formatos coexistem;
- os 12 primeiros caracteres passam a aceitar `A-Z0-9`;
- os 2 digitos verificadores continuam numericos;
- o DV continua em modulo 11 com conversao `ASCII - 48`;
- mesmo apos julho de 2026, ainda pode haver nova inscricao totalmente numerica.

Esse ultimo ponto importa muito: nenhuma biblioteca da familia deve assumir que "novo CNPJ" significa "CNPJ com letra".

## Repositorios da familia

| Repo | Papel | Estado |
| --- | --- | --- |
| `as-cnpj` | Hub central, manifesto, especificacao, vetores de teste e governanca | Atual |
| `as-cnpj-js` | Biblioteca autoral para JavaScript/TypeScript | Publicado |
| `as-cnpj-python` | Biblioteca autoral para Python | Planejado |
| `as-cnpj-java` | Biblioteca autoral para Java | Planejado |
| `as-cnpj-dotnet` | Biblioteca autoral para C# /.NET | Planejado |
| `as-cnpj-go` | Biblioteca autoral para Go | Planejado |

## O que existe hoje neste hub

- [Manifesto e principios de implementacao](docs/manifesto-as-cnpj.md)
- [Fontes oficiais da Receita Federal e regras](docs/fontes-oficiais-e-regras.md)
- [Portfolio das bibliotecas do ecossistema](docs/portfolio-de-bibliotecas.md)
- [Template padrao para repos da familia](docs/template-repos-da-familia.md)
- [Roadmap dos repositorios](docs/roadmap-dos-repositorios.md)
- [Playbook da org GitHub (naming, governanca, visual)](docs/playbook-da-org-github.md)
- [Historico da extracao do as-cnpj-js](docs/extracao-as-cnpj-js.md)
- [Registro estruturado dos repos do ecossistema](catalog/repos-oficiais.json)
- [Vetores compartilhados](vectors/cnpj.json) | [Schema](vectors/cnpj.schema.json)
- [Politica de seguranca](SECURITY.md)
- [Politica de contribuicao](CONTRIBUTING.md)
- [Referencia local da biblioteca JS](packages/js-reference/README.md)

## Ordem recomendada

1. consolidar especificacao, manifesto e vetores de teste no hub;
2. estabilizar a API publica em JS/TS no repo `as-cnpj-js`;
3. portar o mesmo contrato para Python, Java, .NET e Go;
4. publicar releases independentes por repo somente apos convergencia dos testes;
5. manter o hub como fonte de verdade de vetores, manifesto e governanca.

## Testes

```bash
node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js
```

Ou:

```bash
npm.cmd test
```

## Extracao local de futuros repos

O script atual existe por razoes historicas e como base para futuros fluxos de extracao controlada:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-js.ps1
```

Exemplo com destino customizado:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-js.ps1 -Destination ..\as-cnpj-js
```

## Manutencao

Maintainer: **@0moura**
Contato institucional: **ascnpj@0moura.io**

Para reportar vulnerabilidades, consulte [SECURITY.md](SECURITY.md).
Para contribuicoes, consulte [CONTRIBUTING.md](CONTRIBUTING.md).

## Direcao atual

Este repositorio deve ficar cada vez melhor como **homepage tecnica da org**.

As bibliotecas produtivas devem viver em repos proprios.
