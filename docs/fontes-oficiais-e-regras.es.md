# Fuentes Oficiales y Reglas

Idiomas: [Português (Brasil)](fontes-oficiais-e-regras.md) | [English](fontes-oficiais-e-regras.en.md) | **Español** | [Français](fontes-oficiais-e-regras.fr.md)

## Fuentes oficiales

- anuncio de la Receita Federal sobre la transición al CNPJ alfanumérico
- página técnica de la Receita Federal para cálculo del dígito verificador
- FAQ oficial en PDF
- simulador oficial de CNPJ alfanumérico

## Reglas confirmadas

- hito: julio de 2026;
- la longitud total sigue siendo 14 caracteres;
- los primeros 12 caracteres aceptan `A-Z0-9`;
- los últimos 2 caracteres siguen siendo numéricos;
- los dígitos verificadores siguen usando módulo 11;
- la conversión de caracteres usa `ASCII - 48`;
- los CNPJ actuales siguen siendo válidos;
- los formatos numérico y alfanumérico coexistirán.

## Implicaciones prácticas

- almacenar el CNPJ como texto, no como tipo numérico;
- normalizar a mayúsculas;
- soportar entradas con y sin máscara;
- no dividir la lógica en ramas de “CNPJ viejo” y “CNPJ nuevo” cuando la diferencia real es la conversión de caracteres.

