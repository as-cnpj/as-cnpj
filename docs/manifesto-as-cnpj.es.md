# Manifiesto AS-CNPJ

Idiomas: [Português (Brasil)](manifesto-as-cnpj.md) | [English](manifesto-as-cnpj.en.md) | **Español** | [Français](manifesto-as-cnpj.fr.md)

AS-CNPJ es un ecosistema autoral de bibliotecas para CNPJ numérico y alfanumérico.

## Qué defiende

- implementación propia basada en fuentes oficiales de la Receita Federal;
- consistencia entre lenguajes;
- núcleos pequeños y auditables;
- vectores de prueba compartidos;
- documentación directa para uso en producción;
- compatibilidad con el legado sin sacrificar rigor.

## Qué rechaza

- copiar código de terceros;
- portar proyectos externos línea por línea;
- heurísticas frágiles basadas en fechas;
- validación basada solo en regex;
- dependencias innecesarias en el núcleo.

## Contrato mínimo

- validar CNPJ numérico y alfanumérico;
- mantener semántica equivalente para `normalize`, `isValid`, `format`, `assertValid` y `calculateCheckDigits`;
- rechazar caracteres fuera de ASCII imprimible antes de procesar;
- mantener regex de tiempo lineal;
- probar siempre el ejemplo oficial `12.ABC.345/01DE-35`.

