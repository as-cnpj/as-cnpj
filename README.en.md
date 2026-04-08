# AS-CNPJ

Languages: [Português (Brasil)](README.md) | **English** | [Español](README.es.md) | [Français](README.fr.md)

Author-led ecosystem of libraries for numeric and alphanumeric CNPJ.

GitHub org: https://github.com/as-cnpj

## Vision

The **AS-CNPJ** project exists to solve a real engineering problem: the transition of CNPJ to the alphanumeric format, announced by the Brazilian Federal Revenue Service for **July 2026**, requires correct, auditable, and consistent implementations across languages.

This `as-cnpj` repository is the **central hub** of the org. It is not the final production library for any specific language. It centralizes:

- ecosystem positioning;
- consolidated official documentation;
- shared technical rules;
- test vectors and behavior contracts;
- governance for the repository family;
- local reference copies when that helps evolve derived repositories.

## Ecosystem model

The current model is simple:

- **1 org**: `as-cnpj`
- **1 central repo**: `as-cnpj`
- **1 repo per library**: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

This model reduces overlap between documentation, governance, and runtime code.

## Principles

- own implementation, without copying third-party code;
- official Federal Revenue Service basis;
- same functional behavior across languages;
- automated tests as contract;
- small and auditable API;
- simultaneous support for legacy and alphanumeric CNPJ.

## Official facts that affect every library

- the official milestone consulted is still **July 2026**;
- current CNPJs remain valid;
- both formats coexist;
- the first 12 characters accept `A-Z0-9`;
- the last 2 check digits remain numeric;
- check digits still use modulo 11 with `ASCII - 48`;
- even after July 2026, a new registration may still be fully numeric.

This last point matters: no library in the family should assume that "new CNPJ" means "CNPJ with letters".

## Repository Family

| Repo | Role | Status |
| --- | --- | --- |
| `as-cnpj` | Central hub, manifesto, specification, test vectors, and governance | Current |
| `as-cnpj-js` | Author library for JavaScript/TypeScript | Published |
| `as-cnpj-python` | Author library for Python | Local seed in preparation |
| `as-cnpj-java` | Author library for Java | Planned |
| `as-cnpj-dotnet` | Author library for C# /.NET | Planned |
| `as-cnpj-go` | Author library for Go | Planned |

## What exists today in this hub

- [Manifest and implementation principles](docs/manifesto-as-cnpj.md)
- [Official Receita Federal sources and rules](docs/fontes-oficiais-e-regras.md)
- [Ecosystem library portfolio](docs/portfolio-de-bibliotecas.md)
- [Default template for repository family](docs/template-repos-da-familia.md)
- [Repository roadmap](docs/roadmap-dos-repositorios.md)
- [GitHub org playbook (naming, governance, visual)](docs/playbook-da-org-github.md)
- [History of the as-cnpj-js extraction](docs/extracao-as-cnpj-js.md)
- [Structured registry of ecosystem repositories](catalog/repos-oficiais.json)
- [Shared vectors](vectors/cnpj.json) | [Schema](vectors/cnpj.schema.json)
- [Security policy](SECURITY.md)
- [Security audit](AUDIT.md)
- [Contribution policy](CONTRIBUTING.md)
- [Local reference of the JS library](packages/js-reference/README.md)
- [Local reference of the Python library](packages/python-reference/README.md)

## Recommended order

1. consolidate specification, manifesto, and test vectors in the hub;
2. stabilize the public JS/TS API in `as-cnpj-js`;
3. port the same contract to Python, Java, .NET, and Go;
4. publish independent releases per repo only after test convergence;
5. keep the hub as the source of truth for vectors, manifesto, and governance.

## Tests

```bash
node packages/js-reference/test/run.js
```

Or:

```bash
npm.cmd test
```

## Local Extraction of Future Repositories

The current scripts exist for historical reasons and as a base for future controlled extraction flows:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-js.ps1
```

Example with a custom destination:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-js.ps1 -Destination ..\as-cnpj-js
```

For the Python seed:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-python.ps1
```

## Maintenance

Maintainer: **@0moura**  
Institutional contact: **ascnpj@0moura.io**

For vulnerability reports, see [SECURITY.md](SECURITY.md).  
For contributions, see [CONTRIBUTING.md](CONTRIBUTING.md).

## Current Direction

This repository should increasingly behave as the **technical homepage of the org**.

Production libraries should live in their own repositories.
