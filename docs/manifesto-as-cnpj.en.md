# AS-CNPJ Manifest

Languages: [Português (Brasil)](manifesto-as-cnpj.md) | **English** | [Español](manifesto-as-cnpj.es.md) | [Français](manifesto-as-cnpj.fr.md)

AS-CNPJ is an author-led ecosystem of libraries for numeric and alphanumeric CNPJ.

## What it defends

- own implementation based on official Receita Federal sources;
- consistency across languages;
- small and auditable cores;
- shared test vectors;
- direct documentation for production use;
- legacy compatibility without sacrificing rigor.

## What it rejects

- copying third-party code;
- line-by-line ports of external projects;
- fragile date-based heuristics;
- regex-only validation;
- unnecessary dependencies in the validation core.

## Minimum contract

- validate numeric and alphanumeric CNPJ;
- keep equivalent semantics for `normalize`, `isValid`, `format`, `assertValid` and `calculateCheckDigits`;
- reject characters outside printable ASCII before processing;
- keep regexes linear-time;
- always test the official example `12.ABC.345/01DE-35`.

