# Historial de Extraccion de AS-CNPJ JS

Idiomas: [Portugues (Brasil)](extracao-as-cnpj-js.md) | [English](extracao-as-cnpj-js.en.md) | **Espanol** | [Francais](extracao-as-cnpj-js.fr.md)

## Objetivo

Registrar como la semilla inicial fue transformada en un repositorio dedicado:

- `https://github.com/as-cnpj/as-cnpj-js`

## Origen

La base inicial quedo en:

- `packages/js-reference/`

Ese directorio fue el origen de la primera version del repo `as-cnpj-js`.

## Estructura que fue extraida

- `package.json`
- `README.md`
- `LICENSE`
- `CHANGELOG.md`
- `docs/api.md`
- `docs/decisoes.md`
- `src/`
- `test/`

## Proceso usado

1. crear el repo `as-cnpj-js` en la org;
2. copiar el contenido seleccionado de `packages/js-reference/` a la raiz del nuevo repo;
3. sincronizar los vectores compartidos del hub;
4. ajustar CI, metadatos y publicacion en npm;
5. estabilizar README, pruebas y metadatos publicos.

## Fuente de verdad durante y despues de la extraccion

- manifiesto, gobernanza y especificacion siguen en el hub `as-cnpj`;
- los vectores compartidos siguen versionados en el hub;
- la biblioteca JS prueba conformidad contra esos vectores.

## Estado actual

- el hub sigue centralizando la especificacion;
- el repo `as-cnpj-js` centraliza codigo, pruebas y releases de la biblioteca JS.
