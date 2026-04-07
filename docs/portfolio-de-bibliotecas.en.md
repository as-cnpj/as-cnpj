# Library Portfolio

Languages: [Portugues (Brasil)](portfolio-de-bibliotecas.md) | **English** | [Espanol](portfolio-de-bibliotecas.es.md) | [Francais](portfolio-de-bibliotecas.fr.md)

This repository **is not a catalog of third-party libraries**.

It is the central hub of the **AS-CNPJ** ecosystem, designed to present, organize, and govern **author libraries**, one per language, all based on the same official specification.

## Role of this hub

The hub exists to:

- serve as the public banner for the topic;
- centralize project documentation and positioning;
- publish official rules, test vectors, and technical decisions;
- point to the repositories for each language;
- maintain consistency between APIs and behavior.

## Planned repository family

| Repo | Role | Initial status |
| --- | --- | --- |
| `as-cnpj` | Central hub, documentation, test vectors, governance, and overview | Current |
| `as-cnpj-js` | Author library for JavaScript/TypeScript | Published |
| `as-cnpj-python` | Author library for Python | Planned |
| `as-cnpj-java` | Author library for Java | Planned |
| `as-cnpj-dotnet` | Author library for C# /.NET | Planned |
| `as-cnpj-go` | Author library for Go | Planned |
| `as-cnpj-php` | Author library for PHP | Optional |
| `as-cnpj-rust` | Author library for Rust | Optional |

## Recommended execution order

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

This order makes sense because:

- JS/TS serves browsers, Node, and quick integrations;
- Python covers automation, backends, and data stacks;
- Java and .NET are strong in corporate environments;
- Go fits services, CLIs, and high-performance integrations.

## Naming pattern

- hub repo: `as-cnpj`
- language repos: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`
- suggested packages:
  - npm: `@as-cnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Contract between libraries

Every library in the ecosystem must:

- validate numeric and alphanumeric CNPJ;
- share the same normalization semantics;
- share the same set of test vectors;
- clearly document permissive mode and strict mode;
- keep predictable behavior for masked and unmasked input;
- avoid unnecessary dependencies in the core algorithm.

## Source of truth for the ecosystem

Even after publishing derived repositories:

- the manifesto stays in the hub;
- the specification stays in the hub;
- test vectors stay in the hub;
- the template for new repositories stays in the hub.

This prevents each language from starting to invent its own version of the project.
