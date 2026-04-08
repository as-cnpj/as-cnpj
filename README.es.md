# AS-CNPJ

Idiomas: [Português (Brasil)](README.md) | [English](README.en.md) | **Español** | [Français](README.fr.md)

Ecosistema autoral de bibliotecas para CNPJ numérico y alfanumérico.

Organización GitHub: https://github.com/as-cnpj

## Visión

El proyecto **AS-CNPJ** existe para resolver un problema real de ingeniería: la transición del CNPJ al formato alfanumérico, anunciada por la Receita Federal para **julio de 2026**, exige implementaciones correctas, auditables y consistentes entre lenguajes.

Este repositorio `as-cnpj` es el **hub central** de la organización. No es la biblioteca final de producción de un lenguaje específico. Centraliza:

- posicionamiento del ecosistema;
- documentación oficial consolidada;
- reglas técnicas compartidas;
- vectores de prueba y contratos de comportamiento;
- gobernanza de la familia de repositorios;
- copias locales de referencia cuando eso ayuda a evolucionar los repositorios derivados.

## Modelo del ecosistema

El modelo adoptado ahora es simple:

- **1 organización**: `as-cnpj`
- **1 repo central**: `as-cnpj`
- **1 repo por biblioteca**: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

Este modelo reduce la mezcla entre documentación, gobernanza y código de runtime.

## Principios

- implementación propia, sin copiar código de terceros;
- base oficial de la Receita Federal;
- mismo comportamiento funcional entre lenguajes;
- pruebas automatizadas como contrato;
- API pequeña y auditable;
- soporte simultáneo al CNPJ legado y al alfanumérico.

## Hechos oficiales que impactan todas las bibliotecas

- el hito oficial consultado sigue siendo **julio de 2026**;
- los CNPJ actuales siguen siendo válidos;
- ambos formatos coexisten;
- los primeros 12 caracteres aceptan `A-Z0-9`;
- los 2 dígitos verificadores siguen siendo numéricos;
- el DV sigue en módulo 11 con conversión `ASCII - 48`;
- incluso después de julio de 2026, una nueva inscripción puede seguir siendo totalmente numérica.

Este último punto importa mucho: ninguna biblioteca de la familia debe asumir que "nuevo CNPJ" significa "CNPJ con letras".

## Familia de Repositorios

| Repo | Papel | Estado |
| --- | --- | --- |
| `as-cnpj` | Hub central, manifiesto, especificación, vectores de prueba y gobernanza | Actual |
| `as-cnpj-js` | Biblioteca autoral para JavaScript/TypeScript | Publicado |
| `as-cnpj-python` | Biblioteca autoral para Python | Semilla local en preparación |
| `as-cnpj-java` | Biblioteca autoral para Java | Planificado |
| `as-cnpj-dotnet` | Biblioteca autoral para C# /.NET | Planificado |
| `as-cnpj-go` | Biblioteca autoral para Go | Planificado |

## Lo que existe hoy en este hub

- [Manifiesto y principios de implementación](docs/manifesto-as-cnpj.md)
- [Fuentes oficiales de la Receita Federal y reglas](docs/fontes-oficiais-e-regras.md)
- [Portafolio de bibliotecas del ecosistema](docs/portfolio-de-bibliotecas.md)
- [Template estándar para repos de la familia](docs/template-repos-da-familia.md)
- [Roadmap de repositorios](docs/roadmap-dos-repositorios.md)
- [Playbook de la org GitHub (naming, gobernanza, visual)](docs/playbook-da-org-github.md)
- [Histórico de la extracción de as-cnpj-js](docs/extracao-as-cnpj-js.md)
- [Registro estructurado de los repositorios del ecosistema](catalog/repos-oficiais.json)
- [Vectores compartidos](vectors/cnpj.json) | [Schema](vectors/cnpj.schema.json)
- [Política de seguridad](SECURITY.md)
- [Auditoría de seguridad](AUDIT.md)
- [Política de contribución](CONTRIBUTING.md)
- [Referencia local de la biblioteca JS](packages/js-reference/README.md)
- [Referencia local de la biblioteca Python](packages/python-reference/README.md)

## Orden recomendada

1. consolidar especificación, manifiesto y vectores de prueba en el hub;
2. estabilizar la API pública en JS/TS en el repo `as-cnpj-js`;
3. portar el mismo contrato a Python, Java, .NET y Go;
4. publicar releases independientes por repo solo después de la convergencia de las pruebas;
5. mantener el hub como fuente de verdad de vectores, manifiesto y gobernanza.

## Pruebas

```bash
node packages/js-reference/test/run.js
```

O:

```bash
npm.cmd test
```

## Extracción Local de Futuros Repositorios

El script actual existe por razones históricas y como base para futuros flujos de extracción controlada:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-js.ps1
```

Ejemplo con destino personalizado:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-js.ps1 -Destination ..\as-cnpj-js
```

Para la semilla Python:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\prepare-as-cnpj-python.ps1
```

## Mantenimiento

Maintainer: **@0moura**  
Contacto institucional: **ascnpj@0moura.io**

Para reportar vulnerabilidades, consulta [SECURITY.md](SECURITY.md).  
Para contribuciones, consulta [CONTRIBUTING.md](CONTRIBUTING.md).

## Dirección Actual

Este repositorio debe comportarse cada vez más como la **homepage técnica de la org**.

Las bibliotecas productivas deben vivir en repositorios propios.
