# Repository Roadmap

Languages: [Português (Brasil)](roadmap-dos-repositorios.md) | **English** | [Español](roadmap-dos-repositorios.es.md) | [Français](roadmap-dos-repositorios.fr.md)

## Goal

Define the maturation order and scope of each repository in the `as-cnpj` org.

## Current phase

The org already exists:

- https://github.com/as-cnpj

The public runtimes already available are:

- https://github.com/as-cnpj/as-cnpj-js
- https://github.com/as-cnpj/as-cnpj-python

Now the focus is:

- keep the hub as the source of truth for the ecosystem;
- mature `as-cnpj-js` after the initial npm publication;
- mature `as-cnpj-python` after the initial PyPI publication;
- replicate the same technical contract in future languages.

## Recommended sequence

### 1. `as-cnpj`

Scope:

- manifesto;
- official sources;
- specification;
- test vectors;
- governance;
- roadmap;
- templates.

### 2. `as-cnpj-js`

Current state:

- public repository;
- npm package already published.

### 3. `as-cnpj-python`

Current state:

- public repository;
- PyPI package already published as `as-cnpj`.

### 4. `as-cnpj-java`

Scope:

- corporate backend focus;
- clear API for integrations;
- strong algorithm and formatting coverage.

### 5. `as-cnpj-dotnet`

Scope:

- focus on modern .NET;
- good API semantics for services and enterprise apps.

### 6. `as-cnpj-go`

Scope:

- focus on simplicity, low overhead, and package ergonomics.

## Cross-cutting recommended capabilities

Beyond opening new runtimes, the ecosystem should also evolve with:

- batch validation;
- batch normalization and formatting;
- public tools on the site;
- migration and storage guides;
- explicit support for homologation and data cleanup.

## Rule

Do not open many empty repositories at the same time.

Open one repository, stabilize it, document it, publish it, and only then move to the next one.
