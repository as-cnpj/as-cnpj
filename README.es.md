# AS-CNPJ

Idiomas: [Português (Brasil)](README.md) | [English](README.en.md) | **Español** | [Français](README.fr.md)

Ecosistema autoral de bibliotecas para CNPJ numérico y alfanumérico.

Organización GitHub: https://github.com/as-cnpj

## Visión

AS-CNPJ existe para resolver un problema real de ingeniería: la transición del CNPJ al formato alfanumérico, anunciada por la Receita Federal para julio de 2026, exige implementaciones correctas, auditables y consistentes entre lenguajes.

Este repositorio `as-cnpj` es el hub central de la organización. Centraliza:

- posicionamiento del ecosistema;
- documentación oficial consolidada;
- reglas técnicas compartidas;
- vectores de prueba y contratos de comportamiento;
- gobernanza de la familia de repositorios.

## Modelo del ecosistema

- 1 organización: `as-cnpj`
- 1 repositorio central: `as-cnpj`
- 1 repositorio por biblioteca: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

## Hechos clave

- el hito oficial sigue siendo julio de 2026;
- los CNPJ actuales siguen siendo válidos;
- ambos formatos coexistirán;
- los primeros 12 caracteres aceptan `A-Z0-9`;
- los últimos 2 caracteres siguen siendo numéricos;
- los dígitos verificadores siguen usando módulo 11 con `ASCII - 48`;
- incluso después de julio de 2026, un nuevo CNPJ puede seguir siendo totalmente numérico.

## Documentos principales del hub

- [Manifiesto y principios de implementación](docs/manifesto-as-cnpj.md)
- [Fuentes oficiales de la Receita Federal y reglas](docs/fontes-oficiais-e-regras.md)
- [Roadmap de repositorios](docs/roadmap-dos-repositorios.md)
- [Template de la familia de repositorios](docs/template-repos-da-familia.md)
- [Política de seguridad](SECURITY.md)
- [Política de contribución](CONTRIBUTING.md)

## Mantenimiento

Maintainer: `@0moura`  
Contacto institucional: `ascnpj@0moura.io`

