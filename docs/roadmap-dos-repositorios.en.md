# Repository Roadmap

Languages: [Português (Brasil)](roadmap-dos-repositorios.md) | **English** | [Español](roadmap-dos-repositorios.es.md) | [Français](roadmap-dos-repositorios.fr.md)

## Goal

Define the maturation order and scope of each repository in the `as-cnpj` org.

## Current phase

The org already exists:

- https://github.com/as-cnpj

The first derived repository also already exists:

- https://github.com/as-cnpj/as-cnpj-js

The current focus is:

- consolidate the hub as the source of truth for the ecosystem;
- mature `as-cnpj-js` after the initial package publication;
- prepare `as-cnpj-python` as the next derived repository;
- replicate the technical contract in the next languages.

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

Expected result:

- become the org's main page;
- explain the problem, the vision, and the ecosystem architecture.

### 2. `as-cnpj-js`

Current state:

- repository published at `https://github.com/as-cnpj/as-cnpj-js`
- npm package published as `@ascnpj/core`

Scope of this phase:

- stabilize the initial public API;
- keep automated tests in place;
- harden CI, governance, and the release process;
- maintain secure package publication.

Expected result:

- establish the first idiomatic contract of the ecosystem;
- serve as the comparison base for the other ports;
- keep a stable package release cadence.

### 3. `as-cnpj-python`

Current state:

- local seed created in `packages/python-reference`

Scope:

- faithful port of the functional contract;
- idiomatic Python API;
- tests mirroring the hub vectors;
- repository-ready structure with CI and governance.

Expected result:

- open the `as-cnpj-python` repo already with core, tests, CI, and strong README;
- preserve functional equivalence with `as-cnpj-js` without copying the implementation.

### 4. `as-cnpj-java`

Scope:

- corporate focus;
- clear API for backend integration;
- strong algorithm and formatting coverage.

### 5. `as-cnpj-dotnet`

Scope:

- focus on modern .NET;
- good semantics for services and enterprise apps.

### 6. `as-cnpj-go`

Scope:

- focus on simplicity, low overhead, and package ergonomics.

## Criteria to open a new repo

Open a new repo only when there is:

- enough specification in the hub;
- repository template applied;
- test vectors ready;
- language scope defined;
- actual availability to maintain the repo after creation.

## Criteria to publish a package

Publish a package only when there is:

- strong README;
- green automated tests;
- initial changelog;
- defined license;
- minimal stabilized API;
- usage examples.

## Operational rule

Do not open many empty repos at the same time.

Open one repo, stabilize it, document it, publish it, and only then move to the next one.
