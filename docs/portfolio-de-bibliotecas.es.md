# Portafolio de Bibliotecas

Idiomas: [Português (Brasil)](portfolio-de-bibliotecas.md) | [English](portfolio-de-bibliotecas.en.md) | **Español** | [Français](portfolio-de-bibliotecas.fr.md)

Este repositorio no es un catálogo de bibliotecas de terceros. Es el hub central del ecosistema **AS-CNPJ**, pensado para presentar, organizar y gobernar bibliotecas autorales, una por lenguaje, todas basadas en el mismo contrato técnico.

## Papel del hub

El hub existe para:

- centralizar documentación y posicionamiento del proyecto;
- publicar fuentes oficiales, vectores de prueba y decisiones técnicas;
- apuntar a los repositorios públicos de cada lenguaje;
- mantener consistencia entre contratos, nomenclatura y comportamiento.

## Familia de repositorios

| Repo | Papel | Estado |
| --- | --- | --- |
| `as-cnpj` | Hub central, documentación, vectores, auditoría y gobernanza | Actual |
| `as-cnpj-js` | Biblioteca autoral para JavaScript/TypeScript | Publicado |
| `as-cnpj-python` | Biblioteca autoral para Python | Publicado |
| `as-cnpj-java` | Biblioteca autoral para Java | Planeado |
| `as-cnpj-dotnet` | Biblioteca autoral para C# /.NET | Planeado |
| `as-cnpj-go` | Biblioteca autoral para Go | Planeado |
| `as-cnpj-php` | Biblioteca autoral para PHP | Opcional |
| `as-cnpj-rust` | Biblioteca autoral para Rust | Opcional |

## Orden recomendada

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

## Patrón de naming

- hub: `as-cnpj`
- repos por lenguaje: `as-cnpj-{lenguaje}`
- paquetes sugeridos:
  - npm: `@ascnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Contrato entre bibliotecas

Cada biblioteca del ecosistema debe:

- validar CNPJ numérico y alfanumérico;
- compartir la misma semántica de normalización;
- compartir el mismo conjunto de vectores de prueba;
- documentar claramente modo permisivo y modo estricto;
- mantener comportamiento previsible para entrada con y sin máscara;
- evitar dependencias innecesarias en el núcleo del algoritmo.

## Fuente de verdad

Incluso después de publicar los runtimes:

- el manifiesto permanece en el hub;
- la especificación permanece en el hub;
- los vectores de prueba permanecen en el hub;
- la gobernanza y los templates permanecen en el hub.

## Próximo movimiento

Con `as-cnpj-js` y `as-cnpj-python` ya publicados, el siguiente movimiento recomendado para la org pasa a ser `as-cnpj-java`.
