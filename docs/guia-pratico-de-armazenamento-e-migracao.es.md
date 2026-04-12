# Guía Práctica de Almacenamiento y Migración

Idiomas: [Português (Brasil)](guia-pratico-de-armazenamento-e-migracao.md) | [English](guia-pratico-de-armazenamento-e-migracao.en.md) | **Español** | [Français](guia-pratico-de-armazenamento-e-migracao.fr.md)

Esta guía complementa la documentación técnica con foco operativo.

El objetivo aquí no es repetir la regla del dígito verificador, sino reducir errores de arquitectura, retrabajo de migración y malas decisiones de modelado.

## Regla base

- el documento es texto;
- el campo canónico debe almacenarse sin máscara;
- el valor debe normalizarse antes de persistir;
- el documento no debe ser clave primaria por defecto;
- el documento no debe usar una columna numérica.

## Cómo guardar correctamente

### Escenario 1: sistema que maneja solo CNPJ

Modelo recomendado:

- `id`
- `cnpj`
- `created_at`
- `updated_at`

Reglas:

- `id` técnico como clave primaria;
- `cnpj` en `CHAR(14)` o `VARCHAR(14)`;
- almacenamiento sin máscara;
- almacenamiento en mayúsculas;
- índice o unicidad sobre el valor normalizado cuando el dominio lo permita.

### Escenario 2: sistema que maneja CPF y CNPJ

Modelo recomendado:

- `id`
- `document_number`
- `document_type`
- `document_country_code`

Reglas:

- `document_number` siempre como texto;
- `document_type` diferencia `CPF`, `CNPJ` y otros;
- `document_country_code` evita acoplamiento futuro.

### Escenario 3: SaaS multi-país

Modelo recomendado:

- `id`
- `registration_number`
- `registration_type`
- `country_code`

Reglas:

- no atar el dominio a un campo llamado `cnpj`;
- validar por país y tipo;
- mantener el valor principal sin máscara;
- formatear solo en la frontera de interfaz o exportación.

## Qué evitar

- `BIGINT`, `INT`, `NUMBER`, `NUMERIC` o equivalentes para documentos;
- documento como `PK` física de la tabla;
- almacenar con máscara como valor canónico;
- reutilizar la misma regex antigua en múltiples capas;
- repartir validación en trigger, frontend y backend sin un contrato compartido.

## Línea de migración recomendada

### 1. Inventario

Mapea dónde aparece el CNPJ:

- base de datos;
- ORM;
- API;
- frontend;
- integraciones;
- reportes;
- documentos fiscales electrónicos.

### 2. Base de datos

Revisa:

- tipo de columna;
- índices;
- constraints;
- triggers y procedures;
- vistas y materializaciones;
- jobs de ETL.

### 3. Contrato

Define un contrato único:

- entrada aceptada con máscara o sin máscara;
- almacenamiento siempre sin máscara;
- normalización a mayúsculas;
- validación matemática obligatoria;
- formateo solo para presentación.

### 4. Aplicación

Revisa:

- payloads de API;
- definiciones OpenAPI, GraphQL y JSON Schema;
- componentes de formulario;
- mensajes de error;
- filtros, búsquedas y ordenación;
- importadores y exportadores.

### 5. Integraciones externas

Revisa:

- ERP;
- facturación;
- compliance;
- partners;
- mensajería;
- middleware fiscal.

### 6. Homologación

Antes del deploy:

- valida contra casos numéricos legados;
- valida contra casos alfanuméricos;
- valida contra los vectores compartidos del hub;
- valida contra los simuladores oficiales de la Receita cuando tenga sentido;
- valida escenarios de coexistencia entre ambos formatos.

## SQL de referencia

### Ejemplo de columna correcta

```sql
ALTER TABLE empresa
  ADD COLUMN cnpj VARCHAR(14) NOT NULL;
```

### Ejemplo de índice único

```sql
CREATE UNIQUE INDEX ux_empresa_cnpj
  ON empresa (cnpj);
```

### Ejemplo de migración de columna numérica a texto

El detalle varía según la base, pero la línea es:

1. crear una columna textual nueva;
2. poblar la nueva columna;
3. ajustar el código de la aplicación;
4. cambiar índices y constraints;
5. eliminar la columna antigua después de la estabilización.

## DFe y ecosistema fiscal

El cambio no termina en el registro.

Si el sistema participa en `NF-e`, `CT-e`, `MDF-e`, `NFC-e` y flujos similares, el plan debe cubrir toda la ruta fiscal:

- schemas;
- autorización;
- almacenamiento de XML;
- parseo de documentos;
- enrutamiento por CNPJ;
- integraciones con middleware fiscal.

Fuentes oficiales útiles:

- Portal DFe / Conformidade Fácil  
  https://dfe-portal.svrs.rs.gov.br/Cff/Documentos
- Portal MDF-e  
  https://dfe-portal.svrs.rs.gov.br/mdfe/Documentos

## Checklist corto para equipos

### Ingeniería

- ¿la columna es texto?
- ¿el almacenamiento canónico es sin máscara?
- ¿la normalización está centralizada?
- ¿la API acepta ambos formatos?

### Datos / DBA

- ¿los índices siguen siendo válidos?
- ¿las consultas evitan supuestos numéricos?
- ¿ETL y reportes siguen íntegros?

### Producto / Operación

- ¿formularios y mensajes fueron actualizados?
- ¿se notificó a socios externos?
- ¿existe un plan de homologación por etapas?

## Recomendación final

Si una única decisión debe sobrevivir, es esta:

**el valor canónico del documento debe ser texto normalizado, sin máscara, en mayúsculas e independiente de la UI.**
