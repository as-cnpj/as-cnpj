# Practical Storage and Migration Guide

Languages: [Português (Brasil)](guia-pratico-de-armazenamento-e-migracao.md) | **English** | [Español](guia-pratico-de-armazenamento-e-migracao.es.md) | [Français](guia-pratico-de-armazenamento-e-migracao.fr.md)

This guide complements the technical documentation with an operational focus.

The goal here is not to repeat the check digit rule, but to reduce architecture mistakes, migration rework, and poor modeling decisions.

## Base rule

- a document is text;
- the canonical field must be stored without mask;
- the value must be normalized before persistence;
- the document should not be a primary key by default;
- the document should not use a numeric column type.

## How to store correctly

### Scenario 1: system that handles only CNPJ

Recommended model:

- `id`
- `cnpj`
- `created_at`
- `updated_at`

Rules:

- technical `id` as primary key;
- `cnpj` in `CHAR(14)` or `VARCHAR(14)`;
- storage without mask;
- storage in uppercase;
- index or uniqueness over the normalized value when the domain allows it.

### Scenario 2: system that handles CPF and CNPJ

Recommended model:

- `id`
- `document_number`
- `document_type`
- `document_country_code`

Rules:

- `document_number` always as text;
- `document_type` differentiates `CPF`, `CNPJ`, and others;
- `document_country_code` avoids future coupling.

### Scenario 3: multi-country SaaS

Recommended model:

- `id`
- `registration_number`
- `registration_type`
- `country_code`

Rules:

- do not bind the domain to a field named `cnpj`;
- validate by country and type;
- keep the main value without mask;
- format only at the UI or export boundary.

## What to avoid

- `BIGINT`, `INT`, `NUMBER`, `NUMERIC`, or equivalents for documents;
- document as the table's physical `PK`;
- storing masked value as the canonical representation;
- reusing the same old regex across multiple layers;
- spreading validation across trigger, frontend, and backend without one shared contract.

## Recommended migration line

### 1. Inventory

Map where CNPJ appears:

- database;
- ORM;
- API;
- frontend;
- integrations;
- reports;
- electronic fiscal documents.

### 2. Database

Review:

- column type;
- indexes;
- constraints;
- triggers and procedures;
- views and materializations;
- ETL jobs.

### 3. Contract

Define one shared contract:

- input accepted with mask or without mask;
- storage always without mask;
- uppercase normalization;
- mathematical validation is mandatory;
- formatting only for presentation.

### 4. Application

Review:

- API payloads;
- OpenAPI, GraphQL, and JSON Schema definitions;
- form components;
- error messages;
- filters, search, and ordering;
- importers and exporters.

### 5. External integrations

Review:

- ERP;
- billing;
- compliance;
- partners;
- messaging;
- fiscal middleware.

### 6. Homologation

Before deployment:

- validate against legacy numeric cases;
- validate against alphanumeric cases;
- validate against the hub's shared vectors;
- validate against official Receita simulation tools when useful;
- validate coexistence scenarios between both formats.

## Reference SQL

### Example of correct column

```sql
ALTER TABLE company
  ADD COLUMN cnpj VARCHAR(14) NOT NULL;
```

### Example of unique index

```sql
CREATE UNIQUE INDEX ux_company_cnpj
  ON company (cnpj);
```

### Example of migration from numeric to text

Database-specific details vary, but the line is:

1. create a new text column;
2. populate the new column;
3. update application code;
4. switch indexes and constraints;
5. remove the old column after stabilization.

## DFe and fiscal ecosystem

The change does not stop at registration.

If the system participates in `NF-e`, `CT-e`, `MDF-e`, `NFC-e`, and similar flows, the plan must cover the full fiscal path:

- schemas;
- authorization;
- XML storage;
- document parsing;
- CNPJ-based routing;
- integrations with fiscal middleware.

Useful official sources:

- DFe Portal / Conformidade Fácil  
  https://dfe-portal.svrs.rs.gov.br/Cff/Documentos
- MDF-e Portal  
  https://dfe-portal.svrs.rs.gov.br/mdfe/Documentos

## Short checklist for teams

### Engineering

- is the column text?
- is canonical storage mask-free?
- is normalization centralized?
- does the API accept both formats?

### Data / DBA

- are indexes still valid?
- do queries avoid numeric assumptions?
- are ETL and reports still intact?

### Product / Operations

- were forms and messages updated?
- were external partners notified?
- is there a staged homologation plan?

## Final recommendation

If only one decision must survive, it is this:

**the canonical document value should be normalized text, without mask, in uppercase, and independent from the UI.**
