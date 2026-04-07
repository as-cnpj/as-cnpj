# API

Idiomas: [Portugues (Brasil)](api.md) | [English](api.en.md) | **Espanol** | [Francais](api.fr.md)

## Funciones principales

- `normalize(value)`
- `isValid(value, options?)`
- `format(value, options?)`
- `assertValid(value, options?)`
- `calculateCheckDigits(base12)`

## Aliases explicitos

Tambien existen aliases con `CNPJ` en el nombre:

- `normalizeCNPJ(value)`
- `isValidCNPJ(value, options?)`
- `formatCNPJ(value, options?)`
- `assertValidCNPJ(value, options?)`
- `calculateCNPJCheckDigits(base12)`

## `normalize(value)`

Convierte a mayusculas y remueve todo lo que no sea `A-Z0-9`.

**Importante**: esta funcion no valida el CNPJ. El retorno puede no ser un CNPJ valido.
Usa `isValid` despues de normalizar cuando necesites garantia de validez.

Lanza `TypeError` si la entrada no es string.

## `isValid(value, options?)`

Devuelve `true` o `false`.

Opciones:

- `strict: boolean`

Cuando `strict` esta activo, la entrada debe estar en uno de los formatos canonicos:

- `12ABC34501DE35`
- `12.ABC.345/01DE-35`

## `format(value, options?)`

Devuelve el CNPJ con mascara cuando es valido.

Devuelve `null` cuando es invalido.

## `assertValid(value, options?)`

Devuelve el CNPJ normalizado cuando es valido.

Lanza `TypeError` cuando es invalido.

## `calculateCheckDigits(base12)`

Recibe los 12 caracteres base y devuelve los 2 digitos verificadores.

## Reglas

- soporta CNPJ numerico y alfanumerico;
- los digitos verificadores siguen siendo numericos;
- calculo por modulo 11;
- conversion `ASCII - 48`;
- coexistencia entre formatos.
