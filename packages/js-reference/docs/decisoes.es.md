# Decisiones

Idiomas: [Portugues (Brasil)](decisoes.md) | [English](decisoes.en.md) | **Espanol** | [Francais](decisoes.fr.md)

## 1. JavaScript puro con ESM

Motivo:

- nucleo pequeno;
- cero dependencias;
- buena portabilidad;
- auditoria facil.

## 2. API corta con aliases genericos y explicitos

Motivo:

- `normalize`, `isValid` y `format` mejoran la ergonomia;
- los nombres con `CNPJ` reducen la ambiguedad en bases mayores.

## 3. Modo estricto opcional

Motivo:

- muchos flujos reciben dato con mascara, sin mascara o con ruido;
- el modo permisivo ayuda a la integracion;
- el modo estricto ayuda a contratos mas rigidos.

## 4. Vectores compartidos en el hub

Motivo:

- la biblioteca JS no se vuelve duena exclusiva de la verdad;
- los demas ports pueden probar conformidad contra el mismo conjunto.

## 5. Rechazo de repeticiones triviales

Motivo:

- evita falsos positivos comunes en validadores simplistas.
