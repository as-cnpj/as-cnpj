# GitHub Org Playbook

Languages: [Português (Brasil)](playbook-da-org-github.md) | **English** | [Español](playbook-da-org-github.es.md) | [Français](playbook-da-org-github.fr.md)

## Goal

Standardize presentation, naming, and governance for the `as-cnpj` org and the repositories in the family.

## Org model

- **One org**: `as-cnpj`
- **One central governance repo**: `as-cnpj`
- **One repo per library**: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

The hub centralizes documentation, test vectors, and benchmarks.
Each language repository centralizes only the code for that language.

## Naming

- hub: `as-cnpj`
- derived repositories: `as-cnpj-{language}`
- suggested packages:
  - npm: `@ascnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Suggested short org description

Author libraries for numeric and alphanumeric CNPJ validation, with a shared specification and focus on cross-language consistency.

## Repositories to pin

When available:

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

## Suggested short description by repository

| Repo | Description |
| --- | --- |
| `as-cnpj` | Central hub for the AS-CNPJ ecosystem: manifesto, specification, test vectors, and governance. |
| `as-cnpj-js` | AS-CNPJ author library for JavaScript and TypeScript. |
| `as-cnpj-python` | AS-CNPJ author library for Python. |
| `as-cnpj-java` | AS-CNPJ author library for Java. |
| `as-cnpj-dotnet` | AS-CNPJ author library for C# and .NET. |
| `as-cnpj-go` | AS-CNPJ author library for Go. |

## Suggested topics

Common topics:

- `cnpj`
- `cnpj-alfanumerico`
- `brasil`
- `validacao`
- `documentos-brasileiros`

Topics by repository:

- `as-cnpj`
- `typescript`
- `python`
- `java`
- `dotnet`
- `golang`

## Recommended creation order

1. configure `as-cnpj` well;
2. mature `as-cnpj-js`;
3. publish the first package in the ecosystem;
4. repeat the process for the remaining languages.

Do not open several empty repositories at the same time.
Open one repository, stabilize it, document it, publish it, and only then move to the next one.

## Visual policy

Each repository should immediately communicate:

- that it belongs to the AS-CNPJ ecosystem;
- which language it serves;
- whether it is ready for use or still in an early stage.

## README opening structure

Each derived repository should open with:

1. repository name;
2. a short positioning sentence;
3. project status;
4. installation;
5. minimum example;
6. link to the `as-cnpj` hub.

## Governance rule

- the hub centralizes documentation, test vectors, and benchmarks;
- each language repository centralizes only code for that language;
- test vectors should be shared and versioned independently;
- every implementation must prove compatibility with the hub vectors;
- new repositories should only be created after following the hub template.
