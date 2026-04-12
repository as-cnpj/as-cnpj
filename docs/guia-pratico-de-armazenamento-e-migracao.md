# Guia Prático de Armazenamento e Migração

Este guia complementa a documentação técnica do ecossistema com foco operacional.

O objetivo aqui não é repetir a regra do dígito verificador, e sim reduzir erro de arquitetura, retrabalho em migração e decisões ruins de modelagem.

## Regra-base

- documento é texto;
- documento deve ser armazenado sem máscara no campo canônico;
- documento deve ser normalizado antes de persistir;
- documento não deve ser chave primária por padrão;
- documento não deve ser coluna numérica.

## Como salvar corretamente

### Cenário 1: sistema que lida só com CNPJ

Modelo recomendado:

- `id`
- `cnpj`
- `created_at`
- `updated_at`

Regras:

- `id` técnico como chave primária;
- `cnpj` em `CHAR(14)` ou `VARCHAR(14)`;
- armazenamento sem máscara;
- armazenamento em caixa alta;
- índice ou unicidade sobre o valor normalizado quando a regra do domínio permitir.

### Cenário 2: sistema que lida com CPF e CNPJ

Modelo recomendado:

- `id`
- `document_number`
- `document_type`
- `document_country_code`

Regras:

- `document_number` sempre como texto;
- `document_type` diferencia `CPF`, `CNPJ` e outros;
- `document_country_code` evita acoplamento futuro.

### Cenário 3: SaaS multi-país

Modelo recomendado:

- `id`
- `registration_number`
- `registration_type`
- `country_code`

Regras:

- não prender o domínio a um campo chamado `cnpj`;
- validar por país e tipo;
- manter o valor principal sem máscara;
- formatar apenas na borda de interface ou exportação.

## O que evitar

- `BIGINT`, `INT`, `NUMBER`, `NUMERIC` ou equivalentes para documento;
- documento como `PK` física da tabela;
- armazenar com máscara como valor canônico;
- reaproveitar a mesma regex antiga em múltiplas camadas;
- espalhar validação em trigger, frontend e backend sem contrato único.

## Linha de migração recomendada

### 1. Inventário

Mapeie onde o CNPJ aparece:

- banco;
- ORM;
- API;
- frontend;
- integrações;
- relatórios;
- documentos fiscais eletrônicos.

### 2. Banco

Revise:

- tipo da coluna;
- índices;
- constraints;
- triggers e procedures;
- views e materializações;
- jobs de ETL.

### 3. Contrato

Defina um contrato único:

- entrada aceita com máscara ou sem máscara;
- armazenamento sempre sem máscara;
- normalização para caixa alta;
- validação matemática obrigatória;
- formatação apenas para apresentação.

### 4. Aplicação

Revise:

- payloads de API;
- schemas OpenAPI, GraphQL e JSON Schema;
- componentes de formulário;
- mensagens de erro;
- filtros, buscas e ordenação;
- importadores e exportadores.

### 5. Integrações externas

Revise:

- ERP;
- faturamento;
- compliance;
- parceiros;
- mensageria;
- middlewares fiscais.

### 6. Homologação

Antes do deploy:

- valide com casos numéricos legados;
- valide com casos alfanuméricos;
- valide com vetores compartilhados do hub;
- valide com o simulador oficial da Receita quando fizer sentido;
- valide cenários de coexistência entre formatos.

## SQL de referência

### Exemplo de coluna correta

```sql
ALTER TABLE empresa
  ADD COLUMN cnpj VARCHAR(14) NOT NULL;
```

### Exemplo de índice de unicidade

```sql
CREATE UNIQUE INDEX ux_empresa_cnpj
  ON empresa (cnpj);
```

### Exemplo de migração de coluna numérica para texto

O detalhe varia por banco, mas a ideia é:

1. criar coluna nova textual;
2. preencher a nova coluna;
3. ajustar código da aplicação;
4. trocar índices e constraints;
5. remover a coluna antiga depois da estabilização.

## DFe e ecossistema fiscal

A mudança não para no cadastro.

Se o sistema participa de `NF-e`, `CT-e`, `MDF-e`, `NFC-e` e similares, o plano precisa envolver o fluxo fiscal completo:

- schemas;
- autorização;
- armazenamento de XML;
- parse de documentos;
- roteamento por CNPJ;
- integrações com middleware fiscal.

Fontes oficiais úteis:

- Portal DFe / Conformidade Fácil  
  https://dfe-portal.svrs.rs.gov.br/Cff/Documentos
- Portal MDF-e  
  https://dfe-portal.svrs.rs.gov.br/mdfe/Documentos

## Checklist curto para times

### Engenharia

- a coluna é texto?
- o armazenamento é sem máscara?
- a normalização é única?
- a API aceita os dois formatos?

### Dados / DBA

- índices continuam válidos?
- consultas não dependem de tipo numérico?
- ETL e relatórios continuam íntegros?

### Produto / Operação

- formulários e mensagens foram atualizados?
- parceiros externos foram notificados?
- existe plano de homologação por etapa?

## Recomendação final

Se houver uma única decisão para preservar, é esta:

**o valor canônico do documento deve ser texto normalizado, sem máscara, em caixa alta e independente da UI.**
