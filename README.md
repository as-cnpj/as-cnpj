<div align="center">
  <img src="assets/brand/as-cnpj-logo-light.svg" alt="AS-CNPJ" width="860" />
</div>

<p align="center">
  Ecossistema autoral de bibliotecas para CNPJ numérico e alfanumérico, com contrato compartilhado entre linguagens, vetores oficiais e documentação consolidada.
</p>

<p align="center">
  <a href="https://as-cnpj.org">Site</a> ·
  <a href="https://github.com/as-cnpj">Org GitHub</a> ·
  <a href="vectors/cnpj.json">Vetores compartilhados</a> ·
  <a href="AUDIT.md">Auditoria</a> ·
  <a href="SECURITY.md">Segurança</a>
</p>

<p align="center">
  <a href="https://www.npmjs.com/package/@ascnpj/core"><img alt="npm @ascnpj/core" src="https://img.shields.io/npm/v/%40ascnpj%2Fcore?style=flat-square&label=npm&labelColor=1C1917&color=F97316"></a>
  <a href="https://github.com/as-cnpj/as-cnpj-js/actions/workflows/ci.yml"><img alt="CI as-cnpj-js" src="https://img.shields.io/github/actions/workflow/status/as-cnpj/as-cnpj-js/ci.yml?branch=main&style=flat-square&label=as-cnpj-js&labelColor=1C1917"></a>
  <a href="https://github.com/as-cnpj/as-cnpj-python/actions/workflows/ci.yml"><img alt="CI as-cnpj-python" src="https://img.shields.io/github/actions/workflow/status/as-cnpj/as-cnpj-python/ci.yml?branch=main&style=flat-square&label=as-cnpj-python&labelColor=1C1917"></a>
  <a href="LICENSE"><img alt="License MIT" src="https://img.shields.io/github/license/as-cnpj/as-cnpj?style=flat-square&label=license&labelColor=1C1917&color=84A870"></a>
</p>

Idiomas: **Português (Brasil)** | [English](README.en.md) | [Español](README.es.md) | [Français](README.fr.md)

## Bibliotecas publicadas

Use estes links como ponto de entrada do ecossistema:

- [as-cnpj-js](https://github.com/as-cnpj/as-cnpj-js) | JavaScript/TypeScript | pacote npm [`@ascnpj/core`](https://www.npmjs.com/package/@ascnpj/core)
- [as-cnpj-python](https://github.com/as-cnpj/as-cnpj-python) | Python | repositório público ativo, com publicação no PyPI como próximo passo natural

## Por que este hub existe

O projeto **AS-CNPJ** nasceu para tratar um problema real de engenharia: a transição do CNPJ para o formato alfanumérico, anunciada pela Receita Federal para **julho de 2026**, exige implementações corretas, auditáveis e consistentes entre linguagens.

Este repositório `as-cnpj` é a homepage técnica da org. Ele concentra:

- manifesto, princípios e critérios de qualidade do ecossistema;
- regras oficiais consolidadas a partir das fontes da Receita Federal;
- vetores compartilhados e schema versionado;
- governança, segurança e auditoria;
- seeds locais usadas para manter coerência entre os repos derivados.

## Comece por aqui

- [Manifesto e princípios](docs/manifesto-as-cnpj.md)
- [Fontes oficiais e regras de negócio](docs/fontes-oficiais-e-regras.md)
- [Vetores compartilhados](vectors/cnpj.json)
- [Schema dos vetores](vectors/cnpj.schema.json)
- [Portfólio do ecossistema](docs/portfolio-de-bibliotecas.md)
- [Template de repositórios da família](docs/template-repos-da-familia.md)
- [Política de segurança](SECURITY.md)
- [Auditoria de segurança](AUDIT.md)

## Casos de uso que o ecossistema cobre

- formulários e cadastros B2B que precisam aceitar o CNPJ legado e o alfanumérico;
- APIs e backends que normalizam CNPJ antes de persistir ou integrar com ERP;
- integrações com faturamento, compliance, onboarding e KYC;
- suites de teste e homologação que precisam gerar e validar CNPJs consistentes.

## Modelo do ecossistema

- **1 org**: `as-cnpj`
- **1 hub central**: `as-cnpj`
- **1 repo por biblioteca**: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

Esse modelo separa documentação, governança, vetores e código de runtime sem espalhar a fonte de verdade.

## Fatos oficiais que impactam todas as libs

- o marco oficial consultado continua sendo **julho de 2026**;
- os CNPJs atuais continuam válidos;
- os dois formatos coexistem;
- os 12 primeiros caracteres passam a aceitar `A-Z0-9`;
- os 2 dígitos verificadores continuam numéricos;
- o DV continua em módulo 11 com conversão `ASCII - 48`;
- mesmo após julho de 2026, ainda pode haver nova inscrição totalmente numérica.

Esse último ponto impede uma simplificação perigosa: nenhuma biblioteca da família pode assumir que "novo CNPJ" significa obrigatoriamente "CNPJ com letra".

## Repositórios da família

| Repo | Papel | Estado |
| --- | --- | --- |
| `as-cnpj` | Hub central, manifesto, vetores, auditoria e governança | Atual |
| `as-cnpj-js` | Biblioteca autoral para JavaScript/TypeScript | Publicado |
| `as-cnpj-python` | Biblioteca autoral para Python | Publicado |
| `as-cnpj-java` | Biblioteca autoral para Java | Planejado |
| `as-cnpj-dotnet` | Biblioteca autoral para C# /.NET | Planejado |
| `as-cnpj-go` | Biblioteca autoral para Go | Planejado |

## Seeds locais dentro do hub

- [Referência local da biblioteca JS](packages/js-reference/README.md)
- [Referência local da biblioteca Python](packages/python-reference/README.md)

Essas pastas existem para manter a extração e a evolução dos runtimes sob controle, sem transformar o hub em monorepo de produção.

## Testes do hub

```bash
npm.cmd test
```

Ou, se quiser rodar só a referência JS:

```bash
node packages/js-reference/test/run.js
```

## Extração local de futuros repos

O fluxo de extração continua disponível para manutenção das seeds:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-js.ps1
```

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-python.ps1
```

## Manutenção

Maintainer: **@0moura**  
Contato institucional: **ascnpj@0moura.io**

- [Site e documentação](https://as-cnpj.org)
- [Comunidade e apoiadores](https://as-cnpj.org/pt/community)
- [Como contribuir](CONTRIBUTING.md)
- [Política de segurança](SECURITY.md)
- [Auditoria de segurança](AUDIT.md)
