# API

Langues: [Portugues (Brasil)](api.md) | [English](api.en.md) | [Espanol](api.es.md) | **Francais**

## Fonctions principales

- `normalize(value)`
- `isValid(value, options?)`
- `format(value, options?)`
- `assertValid(value, options?)`
- `calculateCheckDigits(base12)`

## Aliases explicites

Il existe aussi des aliases avec `CNPJ` dans le nom:

- `normalizeCNPJ(value)`
- `isValidCNPJ(value, options?)`
- `formatCNPJ(value, options?)`
- `assertValidCNPJ(value, options?)`
- `calculateCNPJCheckDigits(base12)`

## `normalize(value)`

Convertit en majuscules et retire tout ce qui n'est pas `A-Z0-9`.

**Important**: cette fonction ne valide pas le CNPJ. Le resultat peut ne pas etre un CNPJ valide.
Utilisez `isValid` apres normalisation lorsque vous avez besoin d'une garantie de validite.

Lance `TypeError` si l'entree n'est pas une string.

## `isValid(value, options?)`

Retourne `true` ou `false`.

Options:

- `strict: boolean`

Lorsque `strict` est actif, l'entree doit etre dans l'un des formats canoniques:

- `12ABC34501DE35`
- `12.ABC.345/01DE-35`

## `format(value, options?)`

Retourne le CNPJ masque lorsqu'il est valide.

Retourne `null` lorsqu'il est invalide.

## `assertValid(value, options?)`

Retourne le CNPJ normalise lorsqu'il est valide.

Lance `TypeError` lorsqu'il est invalide.

## `calculateCheckDigits(base12)`

Recoit les 12 caracteres de base et retourne les 2 chiffres de controle.

## Regles

- prend en charge le CNPJ numerique et alphanumerique;
- les chiffres de controle restent numeriques;
- calcul par modulo 11;
- conversion `ASCII - 48`;
- coexistence entre formats.
