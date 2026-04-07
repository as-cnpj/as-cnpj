# Playbook de la Org de GitHub

Idiomas: [Portugues (Brasil)](playbook-da-org-github.md) | [English](playbook-da-org-github.en.md) | **Espanol** | [Francais](playbook-da-org-github.fr.md)

## Objetivo

Estandarizar la presentacion, el naming y la gobernanza de la org `as-cnpj` y de los repositorios de la familia.

## Modelo de la org

- **Una org unica**: `as-cnpj`
- **Un repositorio central de gobernanza**: `as-cnpj`
- **Un repositorio por biblioteca**: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

El hub centraliza documentacion, vectores de prueba y benchmarks.
Cada repositorio por lenguaje centraliza solo el codigo de ese lenguaje.

## Naming

- hub: `as-cnpj`
- repositorios derivados: `as-cnpj-{lenguaje}`
- paquetes sugeridos:
  - npm: `@as-cnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Descripcion corta sugerida para la org

Bibliotecas autorales para validacion de CNPJ numerico y alfanumerico, con especificacion compartida y foco en consistencia entre lenguajes.

## Repositorios para fijar

Cuando existan:

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

## Descripcion corta sugerida por repositorio

| Repo | Descripcion |
| --- | --- |
| `as-cnpj` | Hub central del ecosistema AS-CNPJ: manifiesto, especificacion, vectores de prueba y gobernanza. |
| `as-cnpj-js` | Biblioteca autoral AS-CNPJ para JavaScript y TypeScript. |
| `as-cnpj-python` | Biblioteca autoral AS-CNPJ para Python. |
| `as-cnpj-java` | Biblioteca autoral AS-CNPJ para Java. |
| `as-cnpj-dotnet` | Biblioteca autoral AS-CNPJ para C# y .NET. |
| `as-cnpj-go` | Biblioteca autoral AS-CNPJ para Go. |

## Topics sugeridos

Topics comunes:

- `cnpj`
- `cnpj-alfanumerico`
- `brasil`
- `validacao`
- `documentos-brasileiros`

Topics por repositorio:

- `as-cnpj`
- `typescript`
- `python`
- `java`
- `dotnet`
- `golang`

## Orden recomendada de creacion

1. configurar bien `as-cnpj`;
2. madurar `as-cnpj-js`;
3. publicar el primer paquete del ecosistema;
4. repetir el proceso en los demas lenguajes.

No abras varios repositorios vacios al mismo tiempo.
Abre un repositorio, estabilizalo, documentalo, publicalo y solo despues sigue con el siguiente.

## Politica visual

Cada repositorio debe comunicar de inmediato:

- que pertenece al ecosistema AS-CNPJ;
- que lenguaje atiende;
- si ya esta listo para uso o si aun esta en una fase inicial.

## Estructura del inicio del README

Todo repositorio derivado debe comenzar con:

1. nombre del repositorio;
2. una frase corta de posicionamiento;
3. estado del proyecto;
4. instalacion;
5. ejemplo minimo;
6. enlace al hub `as-cnpj`.

## Regla de gobernanza

- el hub centraliza documentacion, vectores de prueba y benchmarks;
- cada repositorio por lenguaje centraliza solo el codigo de ese lenguaje;
- los vectores de prueba deben compartirse y versionarse de forma independiente;
- toda implementacion debe probar compatibilidad con los vectores del hub;
- los nuevos repositorios solo deben nacer despues de seguir la plantilla del hub.
