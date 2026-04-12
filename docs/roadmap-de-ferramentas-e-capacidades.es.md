# Hoja de Ruta de Herramientas y Capacidades

Idiomas: [Português (Brasil)](roadmap-de-ferramentas-e-capacidades.md) | [English](roadmap-de-ferramentas-e-capacidades.en.md) | **Español** | [Français](roadmap-de-ferramentas-e-capacidades.fr.md)

Este documento organiza lo que genera valor real de producto en el ecosistema AS-CNPJ más allá de la validación unitaria básica.

El objetivo es orientar la evolución de las bibliotecas y del sitio con foco en utilidad práctica.

## Tesis

La validación de un elemento por vez resuelve el núcleo, pero no toda la experiencia de adopción.

Las próximas capacidades de mayor valor son:

- validación por lotes;
- normalización y formateo por lotes;
- herramientas públicas en el sitio;
- utilitarios de migración y homologación.

## Qué vale construir en el sitio

### 1. Validador de CNPJ

Herramienta pública simple:

- recibe un CNPJ;
- lo normaliza;
- informa si es válido;
- muestra la forma canónica;
- muestra si pasa el modo estricto.

### 2. Validador por lotes

Herramienta para pegar múltiples líneas:

- una entrada por línea;
- un resultado por línea;
- resumen agregado;
- exportación opcional en CSV.

Recomendación:

- procesamiento local en el navegador cuando sea posible;
- sin upload obligatorio;
- sin persistencia por defecto.

### 3. Generador de ejemplos válidos para prueba

Recomendación de naming:

- evitar llamarlo "generador de nuevos CNPJs";
- preferir **generador de ejemplos válidos para prueba**.

Reglas sugeridas:

- generar solo ejemplos estructuralmente válidos;
- etiquetar claramente como prueba;
- opcionalmente cruzar el comportamiento con el simulador oficial de la Receita.

### 4. Formateador / normalizador

Herramienta simple, pero útil:

- entrada con máscara o sin máscara;
- salida normalizada;
- salida formateada;
- indicación de invalidez.

### 5. Playground de API

Página mostrando:

- llamada JS;
- llamada Python;
- resultado esperado;
- diferencia entre modo permisivo y estricto.

## Qué vale construir en las bibliotecas

### Núcleo obligatorio

Toda biblioteca debe mantener:

- `normalize`
- `isValid`
- `format`
- `assertValid`
- `calculateCheckDigits`

### Capacidades recomendadas de segunda capa

#### 1. Validación por lotes

Recomendación fuerte para todos los lenguajes principales.

Posibles nombres:

- `validateMany`
- `isValidMany`
- `normalizeMany`
- `formatMany`

Contrato recomendado:

- preservar el orden de entrada;
- no ocultar errores por concurrencia;
- no hacer IO;
- operar de forma determinista.

Formato de retorno recomendado:

```txt
[
  {
    index,
    input,
    normalized,
    formatted,
    valid,
    reason
  }
]
```

#### 2. Resumen agregado

Además del retorno por elemento, vale exponer un agregador simple:

- cantidad total;
- cantidad válida;
- cantidad inválida;
- motivos más comunes.

#### 3. Códigos de error estables

Especialmente en lote, los mensajes libres no escalan.

Ejemplos:

- `INVALID_TYPE`
- `INVALID_LENGTH`
- `INVALID_ASCII`
- `INVALID_CHECK_DIGIT`
- `TRIVIAL_REPETITION`
- `INVALID_STRICT_FORMAT`

#### 4. Iteración eficiente

Para bibliotecas de backend:

- aceptar listas;
- más adelante considerar iterables o streams;
- mantener el núcleo simple antes de abstracciones mayores.

## Prioridad recomendada

### Alta

- validador simple en el sitio;
- validador por lotes en el sitio;
- validación por lotes en JS;
- validación por lotes en Python.

### Media

- generador de ejemplos válidos para prueba;
- formateador/normalizador público;
- códigos de error estables;
- exportación CSV en el sitio.

### Baja

- benchmark público entre lenguajes;
- SDK de migración;
- stream processing avanzado.

## Recomendación de producto

Si la idea es invertir donde la comunidad percibe valor más rápido:

1. validador simple en el sitio;
2. validador por lotes en el sitio;
3. `validateMany` o equivalente en las bibliotecas;
4. generador de ejemplos válidos para prueba.

## Regla de diseño

Toda nueva capacidad debe respetar esto:

- el núcleo sigue pequeño;
- el comportamiento sigue previsible;
- la API unitaria sigue siendo la referencia;
- la capa nueva no puede introducir dependencia innecesaria en el algoritmo central.
