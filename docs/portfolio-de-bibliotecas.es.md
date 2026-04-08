# Portafolio de Bibliotecas

Idiomas: [Português (Brasil)](portfolio-de-bibliotecas.md) | [English](portfolio-de-bibliotecas.en.md) | **Español** | [Français](portfolio-de-bibliotecas.fr.md)

Este repositorio **no es un catálogo de bibliotecas de terceros**.

Es el hub central del ecosistema **AS-CNPJ**, pensado para presentar, organizar y gobernar bibliotecas **autorales**, una por lenguaje, todas basadas en la misma especificación oficial.

## Papel de este hub

El hub existe para:

- servir como banner público del tema;
- centralizar documentación y posicionamiento del proyecto;
- publicar reglas oficiales, vectores de prueba y decisiones técnicas;
- apuntar a los repositorios de cada lenguaje;
- mantener consistencia entre APIs y comportamiento.

## Familia de repositorios planificada

| Repo | Papel | Estado inicial |
| --- | --- | --- |
| `as-cnpj` | Hub central, documentación, vectores de prueba, gobernanza y visión general | Actual |
| `as-cnpj-js` | Biblioteca autoral para JavaScript/TypeScript | Publicado |
| `as-cnpj-python` | Biblioteca autoral para Python | Semilla local en el hub |
| `as-cnpj-java` | Biblioteca autoral para Java | Planificado |
| `as-cnpj-dotnet` | Biblioteca autoral para C# /.NET | Planificado |
| `as-cnpj-go` | Biblioteca autoral para Go | Planificado |
| `as-cnpj-php` | Biblioteca autoral para PHP | Opcional |
| `as-cnpj-rust` | Biblioteca autoral para Rust | Opcional |

## Orden recomendada de ejecución

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

Ese orden tiene sentido porque:

- JS/TS atiende navegador, Node e integraciones rápidas;
- Python cubre automatización, backends y data stacks;
- Java y .NET entran fuerte en contexto corporativo;
- Go encaja bien en servicios, CLIs e integraciones de alto rendimiento.

## Patrón de naming

- repo hub: `as-cnpj`
- repos por lenguaje: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`
- paquetes sugeridos:
  - npm: `@ascnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Contrato entre bibliotecas

Toda biblioteca del ecosistema debe:

- validar CNPJ numérico y alfanumérico;
- compartir la misma semántica de normalización;
- compartir el mismo conjunto de vectores de prueba;
- documentar claramente modo permisivo y modo estricto;
- mantener comportamiento previsible para entrada con máscara y sin máscara;
- evitar dependencias innecesarias en el núcleo del algoritmo.

## Fuente de verdad del ecosistema

Incluso después de publicar los repositorios derivados:

- el manifiesto permanece en el hub;
- la especificación permanece en el hub;
- los vectores de prueba permanecen en el hub;
- la plantilla de nuevos repositorios permanece en el hub.

Esto evita que cada lenguaje empiece a inventar su propia versión del proyecto.

## Próximo movimiento

El próximo repositorio recomendado de la org ahora es `as-cnpj-python`.

La semilla local ya existe en:

- `packages/python-reference`
