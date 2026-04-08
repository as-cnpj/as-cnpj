# AS-CNPJ

Languages: [Português (Brasil)](README.md) | **English** | [Español](README.es.md) | [Français](README.fr.md)

Author-led ecosystem of libraries for numeric and alphanumeric CNPJ, with shared behavior across languages, official test vectors, and centralized documentation.

Site: https://as-cnpj.org  
GitHub org: https://github.com/as-cnpj

## Published libraries

- [as-cnpj-js](https://github.com/as-cnpj/as-cnpj-js) | JavaScript/TypeScript | npm package [`@ascnpj/core`](https://www.npmjs.com/package/@ascnpj/core)
- [as-cnpj-python](https://github.com/as-cnpj/as-cnpj-python) | Python | active public repository

## What this hub centralizes

- ecosystem manifesto and principles;
- official Receita Federal sources;
- shared vectors and schema;
- governance, security, and audit;
- repository family catalog.

## Start here

- [Manifesto and principles](docs/manifesto-as-cnpj.md)
- [Official sources and business rules](docs/fontes-oficiais-e-regras.md)
- [Architecture and migration guide](docs/arquitetura-e-migracao.md)
- [Shared vectors](vectors/cnpj.json)
- [Vector schema](vectors/cnpj.schema.json)
- [Ecosystem portfolio](docs/portfolio-de-bibliotecas.md)
- [Security policy](SECURITY.md)
- [Security audit](AUDIT.md)

## Core official facts

- the consulted milestone remains **July 2026**;
- current CNPJs remain valid;
- both formats coexist;
- the first 12 positions accept `A-Z0-9`;
- the last 2 check digits remain numeric;
- check digits still use modulo 11 with `ASCII - 48`.

## Repository family

| Repo | Role | Status |
| --- | --- | --- |
| `as-cnpj` | Central hub, manifesto, vectors, audit, and governance | Current |
| `as-cnpj-js` | Author library for JavaScript/TypeScript | Published |
| `as-cnpj-python` | Author library for Python | Published |
| `as-cnpj-java` | Author library for Java | Planned |
| `as-cnpj-dotnet` | Author library for C# /.NET | Planned |
| `as-cnpj-go` | Author library for Go | Planned |

## Maintenance

Maintainer: **@0moura**  
Institutional contact: **ascnpj@0moura.io**

- [Site and documentation](https://as-cnpj.org)
- [Community and supporters](https://as-cnpj.org/en/community)
- [Contributing](CONTRIBUTING.md)
- [Security policy](SECURITY.md)
