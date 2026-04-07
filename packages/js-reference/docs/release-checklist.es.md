# Checklist de Release

Idiomas: [Portugues (Brasil)](release-checklist.md) | [English](release-checklist.en.md) | **Espanol** | [Francais](release-checklist.fr.md)

Checklist espejada de la biblioteca `as-cnpj-js`.

Existe en el hub para mantener la copia local alineada con el repositorio publicado.

## Contenido publico

- README coherente con el estado real del repo.
- Sin texto residual de semilla, extraccion o borrador interno.
- Sin enlaces rotos a hub, issues, homepage o repositorios inexistentes.
- Changelog coherente con el estado de la release.
- Metadatos del paquete consistentes con el repositorio publicado.

## Validacion tecnica

- `node --check packages/js-reference/src/cnpj.js`
- `node --check packages/js-reference/src/index.js`
- `node --check packages/js-reference/test/cnpj.test.js`
- `node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js`

## Publicacion

- `package.json` con `name`, `version`, `repository`, `bugs`, `homepage` y `publishConfig` correctos.
- Licencia definida.
- Vectores compartidos presentes.
- API documentada.
- Decisiones principales documentadas.
