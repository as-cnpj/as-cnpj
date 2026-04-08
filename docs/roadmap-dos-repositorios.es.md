# Roadmap de Repositorios

Idiomas: [Português (Brasil)](roadmap-dos-repositorios.md) | [English](roadmap-dos-repositorios.en.md) | **Español** | [Français](roadmap-dos-repositorios.fr.md)

## Objetivo

Definir el orden de maduración y el alcance de cada repositorio de la org `as-cnpj`.

## Fase actual

La organización ya existe:

- https://github.com/as-cnpj

El primer repositorio derivado también ya existe:

- https://github.com/as-cnpj/as-cnpj-js

Ahora el foco es:

- consolidar el hub como fuente de verdad del ecosistema;
- madurar `as-cnpj-js` después de la publicación inicial del paquete;
- preparar `as-cnpj-python` como próximo repositorio derivado;
- replicar el contrato técnico en los próximos lenguajes.

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

Resultado esperado:

- convertirse en la página principal de la org;
- explicar el problema, la visión y la arquitectura del ecosistema.

### 2. `as-cnpj-js`

Estado actual:

- repositorio publicado en `https://github.com/as-cnpj/as-cnpj-js`
- paquete npm publicado como `@ascnpj/core`

Alcance de esta fase:

- estabilizar la API pública inicial;
- mantener pruebas automatizadas;
- endurecer CI, gobernanza y proceso de release;
- mantener publicación segura del paquete.

Resultado esperado:

- fijar el primer contrato idiomático del ecosistema;
- servir como base de comparación para los demás ports;
- mantener una cadencia estable de releases del paquete.

### 3. `as-cnpj-python`

Estado actual:

- semilla local creada en `packages/python-reference`

Alcance:

- port fiel del contrato funcional;
- API idiomática en Python;
- pruebas espejando los vectores del hub;
- estructura lista para repositorio con CI y gobernanza.

Resultado esperado:

- abrir el repo `as-cnpj-python` ya con núcleo, pruebas, CI y README fuertes;
- mantener equivalencia funcional con `as-cnpj-js` sin copiar la implementación.

### 4. `as-cnpj-java`

Alcance:

- foco corporativo;
- API clara para integración backend;
- cobertura fuerte del algoritmo y del formateo.

### 5. `as-cnpj-dotnet`

Alcance:

- foco en .NET moderno;
- buena semántica para servicios y apps corporativas.

### 6. `as-cnpj-go`

Alcance:

- foco en simplicidad, bajo overhead y ergonomía de paquete.

## Criterio para abrir un nuevo repo

Abrir un nuevo repo solo cuando haya:

- especificación suficiente en el hub;
- template de repo aplicado;
- vectores de prueba listos;
- alcance del lenguaje definido;
- disponibilidad para mantener el repo después de su creación.

## Criterio para publicar paquete

Publicar paquete solo cuando haya:

- README fuerte;
- pruebas automatizadas en verde;
- changelog inicial;
- licencia definida;
- API mínima estabilizada;
- ejemplos de uso.

## Regla operativa

No abrir muchos repos vacíos al mismo tiempo.

Abrir un repo, estabilizarlo, documentarlo, publicarlo, y solo después pasar al siguiente.
