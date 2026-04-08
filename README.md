# AS-CNPJ

Idiomas: **Português (Brasil)** | [English](README.en.md) | [Español](README.es.md) | [Français](README.fr.md)

Ecossistema autoral de bibliotecas para CNPJ numérico e alfanumérico.

Org GitHub: https://github.com/as-cnpj

## Visão

O projeto **AS-CNPJ** existe para resolver um problema real de engenharia: a transição do CNPJ para o formato alfanumérico, anunciada pela Receita Federal para **julho de 2026**, exige implementações corretas, auditáveis e consistentes entre linguagens.

Este repositório `as-cnpj` é o **hub central** da org. Ele não é a biblioteca final de produção de uma linguagem específica. Ele centraliza:

- posicionamento do ecossistema;
- documentação oficial consolidada;
- regras técnicas compartilhadas;
- vetores de teste e contratos de comportamento;
- governança dos repositórios da família;
- cópias locais de referência quando isso ajudar na evolução dos repos derivados.

## Modelo do ecossistema

O modelo adotado agora é simples:

- **1 org**: `as-cnpj`
- **1 repo central**: `as-cnpj`
- **1 repo por biblioteca**: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

Esse modelo reduz mistura entre documentação, governança e código de runtime.

## Princípios

- implementação própria, sem copiar código de terceiros;
- base oficial da Receita Federal;
- mesmo comportamento funcional entre linguagens;
- testes automatizados como contrato;
- API pequena e auditavel;
- suporte simultâneo ao CNPJ legado e ao alfanumérico.

## Fatos oficiais que impactam todas as libs

- o marco oficial consultado continua sendo **julho de 2026**;
- os CNPJs atuais continuam válidos;
- os dois formatos coexistem;
- os 12 primeiros caracteres passam a aceitar `A-Z0-9`;
- os 2 dígitos verificadores continuam numéricos;
- o DV continua em módulo 11 com conversão `ASCII - 48`;
- mesmo após julho de 2026, ainda pode haver nova inscrição totalmente numérica.

Esse último ponto importa muito: nenhuma biblioteca da família deve assumir que "novo CNPJ" significa "CNPJ com letra".

## Repositórios da Família

| Repo | Papel | Estado |
| --- | --- | --- |
| `as-cnpj` | Hub central, manifesto, especificação, vetores de teste e governança | Atual |
| `as-cnpj-js` | Biblioteca autoral para JavaScript/TypeScript | Publicado |
| `as-cnpj-python` | Biblioteca autoral para Python | Publicado |
| `as-cnpj-java` | Biblioteca autoral para Java | Planejado |
| `as-cnpj-dotnet` | Biblioteca autoral para C# /.NET | Planejado |
| `as-cnpj-go` | Biblioteca autoral para Go | Planejado |

## O que existe hoje neste hub

- [Manifesto e princípios de implementação](docs/manifesto-as-cnpj.md)
- [Fontes oficiais da Receita Federal e regras](docs/fontes-oficiais-e-regras.md)
- [Portfólio das bibliotecas do ecossistema](docs/portfolio-de-bibliotecas.md)
- [Template padrão para repos da família](docs/template-repos-da-familia.md)
- [Roadmap dos repositórios](docs/roadmap-dos-repositorios.md)
- [Playbook da org GitHub (naming, governança, visual)](docs/playbook-da-org-github.md)
- [Histórico da extração do as-cnpj-js](docs/extracao-as-cnpj-js.md)
- [Registro estruturado dos repositórios do ecossistema](catalog/repos-oficiais.json)
- [Vetores compartilhados](vectors/cnpj.json) | [Schema](vectors/cnpj.schema.json)
- [Política de segurança](SECURITY.md)
- [Auditoria de segurança](AUDIT.md)
- [Política de contribuição](CONTRIBUTING.md)
- [Referência local da biblioteca JS](packages/js-reference/README.md)
- [Referência local da biblioteca Python](packages/python-reference/README.md)
- [Repositório público as-cnpj-js](https://github.com/as-cnpj/as-cnpj-js)
- [Repositório público as-cnpj-python](https://github.com/as-cnpj/as-cnpj-python)

## Ordem recomendada

1. consolidar especificação, manifesto e vetores de teste no hub;
2. estabilizar a API pública em JS/TS no repo `as-cnpj-js`;
3. portar o mesmo contrato para Python, Java, .NET e Go;
4. publicar releases independentes por repo somente após convergência dos testes;
5. manter o hub como fonte de verdade de vetores, manifesto e governança.

## Testes

```bash
node packages/js-reference/test/run.js
```

Ou:

```bash
npm.cmd test
```

## Extração Local de Futuros Repos

O script atual existe por razões históricas e como base para futuros fluxos de extração controlada:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-js.ps1
```

Exemplo com destino customizado:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-js.ps1 -Destination ..\as-cnpj-js
```

Para a semente Python:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-python.ps1
```

## Manutenção

Maintainer: **@0moura**
Contato institucional: **ascnpj@0moura.io**

Para reportar vulnerabilidades, consulte [SECURITY.md](SECURITY.md).
Para contribuições, consulte [CONTRIBUTING.md](CONTRIBUTING.md).

## Direção Atual

Este repositório deve ficar cada vez melhor como **homepage técnica da org**.

As bibliotecas produtivas devem viver em repos próprios.
