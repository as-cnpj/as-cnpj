# Roadmap de Repositorios

Idiomas: [Português (Brasil)](roadmap-dos-repositorios.md) | [English](roadmap-dos-repositorios.en.md) | **Español** | [Français](roadmap-dos-repositorios.fr.md)

## Objetivo

Definir el orden de maduración y el alcance de cada repositorio de la org `as-cnpj`.

## Fase actual

La org ya existe:

- https://github.com/as-cnpj

Los runtimes públicos ya disponibles son:

- https://github.com/as-cnpj/as-cnpj-js
- https://github.com/as-cnpj/as-cnpj-python

Ahora el foco es:

- mantener el hub como fuente de verdad del ecosistema;
- madurar `as-cnpj-js` después de la publicación inicial en npm;
- madurar `as-cnpj-python` antes de la publicación inicial en PyPI;
- replicar el mismo contrato técnico en los próximos lenguajes.

## Secuencia recomendada

### 1. `as-cnpj`

Alcance:

- manifiesto;
- fuentes oficiales;
- especificación;
- vectores de prueba;
- gobernanza;
- roadmap;
- templates.

### 2. `as-cnpj-js`

Estado actual:

- repositorio público;
- paquete npm ya publicado.

### 3. `as-cnpj-python`

Estado actual:

- repositorio público;
- el siguiente paso natural es la publicación en PyPI.

### 4. `as-cnpj-java`

Alcance:

- foco corporativo backend;
- API clara para integraciones;
- buena cobertura del algoritmo y del formateo.

### 5. `as-cnpj-dotnet`

Alcance:

- foco en .NET moderno;
- buena semántica para servicios y aplicaciones corporativas.

### 6. `as-cnpj-go`

Alcance:

- foco en simplicidad, bajo overhead y ergonomía de paquete.

## Regla

No abrir varios repositorios vacíos al mismo tiempo.

Abrir un repositorio, estabilizarlo, documentarlo, publicarlo, y solo después pasar al siguiente.
