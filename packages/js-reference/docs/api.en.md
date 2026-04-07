# API

Languages: [Portugues (Brasil)](api.md) | **English** | [Espanol](api.es.md) | [Francais](api.fr.md)

## Main functions

- `normalize(value)`
- `isValid(value, options?)`
- `format(value, options?)`
- `assertValid(value, options?)`
- `calculateCheckDigits(base12)`

## Explicit aliases

There are also aliases named with `CNPJ`:

- `normalizeCNPJ(value)`
- `isValidCNPJ(value, options?)`
- `formatCNPJ(value, options?)`
- `assertValidCNPJ(value, options?)`
- `calculateCNPJCheckDigits(base12)`

## `normalize(value)`

Converts to uppercase and removes everything that is not `A-Z0-9`.

**Important**: this function does not validate the CNPJ. The result may not be a valid CNPJ.
Use `isValid` after normalization when you need a validity guarantee.

Throws `TypeError` if the input is not a string.

## `isValid(value, options?)`

Returns `true` or `false`.

Options:

- `strict: boolean`

When `strict` is active, the input must be in one of the canonical formats:

- `12ABC34501DE35`
- `12.ABC.345/01DE-35`

## `format(value, options?)`

Returns the masked CNPJ when valid.

Returns `null` when invalid.

## `assertValid(value, options?)`

Returns the normalized CNPJ when valid.

Throws `TypeError` when invalid.

## `calculateCheckDigits(base12)`

Receives the 12 base characters and returns the 2 check digits.

## Rules

- supports numeric and alphanumeric CNPJ;
- check digits remain numeric;
- calculation by modulo 11;
- `ASCII - 48` conversion;
- coexistence between formats.
