# AS-CNPJ

Languages: [Português (Brasil)](README.md) | **English** | [Español](README.es.md) | [Français](README.fr.md)

Author-led ecosystem of libraries for numeric and alphanumeric CNPJ.

GitHub org: https://github.com/as-cnpj

## Vision

AS-CNPJ exists to solve a real engineering problem: the transition of CNPJ to an alphanumeric format, announced by the Brazilian Federal Revenue Service for July 2026, requires correct, auditable and consistent implementations across languages.

This `as-cnpj` repository is the central hub of the org. It centralizes:

- ecosystem positioning;
- consolidated official documentation;
- shared technical rules;
- shared test vectors and behavior contracts;
- governance for the family of repositories.

## Ecosystem model

- 1 organization: `as-cnpj`
- 1 central repository: `as-cnpj`
- 1 repository per library: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

## Key facts

- the official milestone is still July 2026;
- current CNPJs remain valid;
- both formats will coexist;
- the first 12 characters accept `A-Z0-9`;
- the last 2 characters remain numeric;
- check digits still use modulo 11 with `ASCII - 48`;
- even after July 2026, a newly assigned CNPJ may still be fully numeric.

## Main hub documents

- [Manifest and implementation principles](docs/manifesto-as-cnpj.md)
- [Official Receita Federal sources and rules](docs/fontes-oficiais-e-regras.md)
- [Repository roadmap](docs/roadmap-dos-repositorios.md)
- [Repository family template](docs/template-repos-da-familia.md)
- [Security policy](SECURITY.md)
- [Contribution policy](CONTRIBUTING.md)

## Maintenance

Maintainer: `@0moura`  
Institutional contact: `ascnpj@0moura.io`

