# AS-CNPJ

Idiomas: [Português (Brasil)](README.md) | [English](README.en.md) | **Español** | [Français](README.fr.md)

Ecosistema autoral de bibliotecas para CNPJ numérico y alfanumérico, con comportamiento compartido entre lenguajes, vectores oficiales y documentación centralizada.

Sitio: https://as-cnpj.org  
Org GitHub: https://github.com/as-cnpj

## Bibliotecas publicadas

- [as-cnpj-js](https://github.com/as-cnpj/as-cnpj-js) | JavaScript/TypeScript | paquete npm [`@ascnpj/core`](https://www.npmjs.com/package/@ascnpj/core)
- [as-cnpj-python](https://github.com/as-cnpj/as-cnpj-python) | Python | repositorio público activo

## Qué centraliza este hub

- manifiesto y principios del ecosistema;
- fuentes oficiales de la Receita Federal;
- vectores compartidos y schema;
- gobernanza, seguridad y auditoría;
- catálogo de repositorios de la familia.

## Empieza aquí

- [Manifiesto y principios](docs/manifesto-as-cnpj.md)
- [Fuentes oficiales y reglas de negocio](docs/fontes-oficiais-e-regras.md)
- [Arquitectura y migración para CNPJ alfanumérico](docs/arquitetura-e-migracao.md)
- [Vectores compartidos](vectors/cnpj.json)
- [Schema de vectores](vectors/cnpj.schema.json)
- [Portafolio del ecosistema](docs/portfolio-de-bibliotecas.md)
- [Política de seguridad](SECURITY.md)
- [Auditoría de seguridad](AUDIT.md)

## Hechos oficiales centrales

- el marco consultado sigue siendo **julio de 2026**;
- los CNPJs actuales siguen siendo válidos;
- ambos formatos coexistirán;
- las primeras 12 posiciones aceptan `A-Z0-9`;
- los 2 dígitos verificadores siguen siendo numéricos;
- el cálculo del DV sigue usando módulo 11 con conversión `ASCII - 48`.

## Familia de repositorios

| Repo | Papel | Estado |
| --- | --- | --- |
| `as-cnpj` | Hub central, manifiesto, vectores, auditoría y gobernanza | Actual |
| `as-cnpj-js` | Biblioteca autoral para JavaScript/TypeScript | Publicado |
| `as-cnpj-python` | Biblioteca autoral para Python | Publicado |
| `as-cnpj-java` | Biblioteca autoral para Java | Planeado |
| `as-cnpj-dotnet` | Biblioteca autoral para C# /.NET | Planeado |
| `as-cnpj-go` | Biblioteca autoral para Go | Planeado |

## Mantenimiento

Maintainer: **@0moura**  
Contacto institucional: **ascnpj@0moura.io**

- [Sitio y documentación](https://as-cnpj.org)
- [Comunidad y apoyadores](https://as-cnpj.org/es/community)
- [Cómo contribuir](CONTRIBUTING.md)
- [Política de seguridad](SECURITY.md)
