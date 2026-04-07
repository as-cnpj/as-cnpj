# Family Repository Template

Languages: [Português (Brasil)](template-repos-da-familia.md) | **English** | [Español](template-repos-da-familia.es.md) | [Français](template-repos-da-familia.fr.md)

Every ecosystem repository should contain at minimum:

- `README.md`
- `LICENSE`
- `CHANGELOG.md`
- `SECURITY.md`
- `CONTRIBUTING.md`
- `docs/`
- `src/`
- `test/`

Minimum behavior:

- support numeric and alphanumeric CNPJ;
- accept masked and unmasked input;
- keep check digits numeric;
- provide strict mode when appropriate;
- reject invalid characters.

Minimum testing:

- official Receita example;
- valid numeric case;
- valid alphanumeric case;
- invalid check digit;
- empty input;
- invalid type when applicable;
- lowercase normalization;
- trivial repeated values.

