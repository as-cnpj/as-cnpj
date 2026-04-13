# AS-CNPJ

Idiomas: **Portugues (Brasil)** | [English](README.en.md) | [Espanol](README.es.md) | [Francais](README.fr.md)

Ecossistema autoral de bibliotecas para CNPJ numerico e alfanumerico.

Org GitHub: https://github.com/as-cnpj

## Visao

O projeto **AS-CNPJ** existe para manter implementacoes corretas, auditaveis e consistentes para a transicao do CNPJ ao formato alfanumerico, anunciada pela Receita Federal para **julho de 2026**.

Este repositorio `as-cnpj` e o **hub central** da org. Ele concentra:

- manifesto e posicionamento do ecossistema;
- documentacao oficial consolidada;
- regras tecnicas compartilhadas;
- vetores de teste e contratos de comportamento;
- governanca dos repositorios da familia.

## Modelo do ecossistema

- **1 org**: `as-cnpj`
- **1 repo central**: `as-cnpj`
- **1 repo por biblioteca**: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-go`, `as-cnpj-dotnet`

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

## Bibliotecas publicadas

- [as-cnpj-js](https://github.com/as-cnpj/as-cnpj-js) | JavaScript/TypeScript | npm: [`@ascnpj/core`](https://www.npmjs.com/package/@ascnpj/core)
- [as-cnpj-python](https://github.com/as-cnpj/as-cnpj-python) | Python | PyPI: [`as-cnpj`](https://pypi.org/project/as-cnpj/)
- [as-cnpj-java](https://github.com/as-cnpj/as-cnpj-java) | Java | repositorio publico no GitHub
- [as-cnpj-go](https://github.com/as-cnpj/as-cnpj-go) | Go | repositorio publico no GitHub

## Repositorios da familia

| Repo | Papel | Estado |
| --- | --- | --- |
| `as-cnpj` | Hub central, manifesto, especificacao, vetores de teste e governanca | Atual |
| `as-cnpj-js` | Biblioteca autoral para JavaScript/TypeScript | Publicado |
| `as-cnpj-python` | Biblioteca autoral para Python | Publicado |
| `as-cnpj-java` | Biblioteca autoral para Java | Publicado |
| `as-cnpj-go` | Biblioteca autoral para Go | Publicado |
| `as-cnpj-dotnet` | Biblioteca autoral para C# /.NET | Planejado |

## O que existe hoje neste hub

- [Manifesto e principios de implementacao](docs/manifesto-as-cnpj.md)
- [Fontes oficiais da Receita Federal e regras](docs/fontes-oficiais-e-regras.md)
- [Portfolio das bibliotecas do ecossistema](docs/portfolio-de-bibliotecas.md)
- [Template padrao para repos da familia](docs/template-repos-da-familia.md)
- [Roadmap dos repositorios](docs/roadmap-dos-repositorios.md)
- [Playbook da org GitHub](docs/playbook-da-org-github.md)
- [Registro estruturado dos repositorios do ecossistema](catalog/repos-oficiais.json)
- [Vetores compartilhados](vectors/cnpj.json) | [Schema](vectors/cnpj.schema.json)
- [Politica de seguranca](SECURITY.md)
- [Auditoria de seguranca](AUDIT.md)
- [Politica de contribuicao](CONTRIBUTING.md)

## Ordem recomendada

1. consolidar especificacao, manifesto e vetores de teste no hub;
2. manter JS e Python como runtimes de referencia ja publicados em registry;
3. amadurecer Java e Go para futura publicacao em registry;
4. abrir .NET depois da convergencia do contrato atual;
5. manter o hub como fonte de verdade de vetores, manifesto e governanca.

## Manutencao

Maintainer: **@0moura**
Contato institucional: **ascnpj@0moura.io**

Para reportar vulnerabilidades, consulte [SECURITY.md](SECURITY.md).
Para contribuicoes, consulte [CONTRIBUTING.md](CONTRIBUTING.md).

## Direcao atual

Este repositorio deve funcionar como **homepage tecnica da org**.

As bibliotecas produtivas devem viver em repositorios proprios.
