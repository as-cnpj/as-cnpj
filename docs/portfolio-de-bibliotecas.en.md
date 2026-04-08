# Library Portfolio

Languages: [Português (Brasil)](portfolio-de-bibliotecas.md) | **English** | [Español](portfolio-de-bibliotecas.es.md) | [Français](portfolio-de-bibliotecas.fr.md)

This repository is not a catalog of third-party libraries. It is the central hub of the **AS-CNPJ** ecosystem, designed to present, organize, and govern author-led libraries, one per language, all based on the same technical contract.

## Hub role

The hub exists to:

- centralize project documentation and positioning;
- publish official sources, test vectors, and technical decisions;
- point to the public repositories of each language;
- keep contracts, naming, and behavior consistent.

## Repository family

| Repo | Role | Status |
| --- | --- | --- |
| `as-cnpj` | Central hub, documentation, vectors, audit, and governance | Current |
| `as-cnpj-js` | Author library for JavaScript/TypeScript | Published |
| `as-cnpj-python` | Author library for Python | Published |
| `as-cnpj-java` | Author library for Java | Planned |
| `as-cnpj-dotnet` | Author library for C# /.NET | Planned |
| `as-cnpj-go` | Author library for Go | Planned |
| `as-cnpj-php` | Author library for PHP | Optional |
| `as-cnpj-rust` | Author library for Rust | Optional |

## Recommended order

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

## Naming pattern

- hub: `as-cnpj`
- language repos: `as-cnpj-{language}`
- suggested packages:
  - npm: `@ascnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Contract between libraries

Every ecosystem library must:

- validate numeric and alphanumeric CNPJ;
- share the same normalization semantics;
- share the same test vectors;
- document permissive and strict modes clearly;
- keep predictable behavior for masked and unmasked input;
- avoid unnecessary dependencies in the algorithm core.

## Source of truth

Even after public runtimes exist:

- the manifesto stays in the hub;
- the specification stays in the hub;
- the test vectors stay in the hub;
- governance and templates stay in the hub.

## Next move

With `as-cnpj-js` and `as-cnpj-python` already published, the next recommended move for the org is `as-cnpj-java`.
