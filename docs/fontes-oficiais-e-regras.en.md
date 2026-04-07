# Official Sources and Rules

Languages: [Português (Brasil)](fontes-oficiais-e-regras.md) | **English** | [Español](fontes-oficiais-e-regras.es.md) | [Français](fontes-oficiais-e-regras.fr.md)

## Official sources

- Receita Federal announcement on the alphanumeric CNPJ transition
- Receita Federal technical page for check digit calculation
- Receita Federal FAQ PDF
- official alphanumeric CNPJ simulator

## Confirmed rules

- milestone: July 2026;
- total length remains 14 characters;
- first 12 characters accept `A-Z0-9`;
- last 2 characters remain numeric;
- check digits still use modulo 11;
- character conversion uses `ASCII - 48`;
- current CNPJs remain valid;
- numeric and alphanumeric formats coexist.

## Practical architecture implications

- store CNPJ as text, not numeric type;
- normalize to uppercase;
- support masked and unmasked inputs;
- do not split logic into “old CNPJ” vs “new CNPJ” branches when the real difference is character conversion.

