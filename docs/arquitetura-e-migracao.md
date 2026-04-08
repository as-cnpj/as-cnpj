# Arquitetura e Migração para CNPJ Alfanumérico

Este documento existe para cobrir a parte que uma biblioteca sozinha não resolve: modelagem de dados, estratégia de migração, impacto sistêmico e pontos de integração que tendem a quebrar quando o CNPJ passa a aceitar letras.

Ele nasce de um padrão claro observado na comunidade: a maior parte dos erros históricos não vem do algoritmo do dígito verificador, e sim de decisões de arquitetura, banco de dados e contratos de integração.

## Tese central

O aprendizado mais importante para o ecossistema é simples:

- documento é texto;
- documento não deve ser modelado como tipo numérico;
- documento não deve ser chave primária por padrão;
- migração para o novo formato não é só regex, máscara e cálculo de DV.

## O que a comunidade está percebendo corretamente

Os comentários de times reais costumam repetir quatro pontos válidos:

- quem armazenou CPF ou CNPJ em tipo numérico terá trabalho de migração;
- `VARCHAR(14)` resolve parte do problema, mas não todo o problema;
- stored procedure, trigger ou constraint podem ajudar, mas não resolvem a arquitetura inteira;
- sistemas multi-país ou multi-documento precisam abstrair o identificador regulatório de forma mais genérica.

## Como armazenar corretamente

### Modelo mínimo para sistemas apenas com CNPJ

Se a aplicação lida exclusivamente com CNPJ brasileiro:

- armazenar o valor principal sem máscara;
- usar texto normalizado em caixa alta;
- preferir `CHAR(14)` ou `VARCHAR(14)` para o valor canônico;
- usar índice ou restrição de unicidade sobre o valor normalizado quando a regra do domínio permitir.

Modelo conceitual:

- `id`
- `cnpj`
- `created_at`
- `updated_at`

Observações:

- `id` técnico como chave primária;
- `cnpj` como atributo de negócio;
- `cnpj` não como tipo numérico;
- `cnpj` não como `PK` por padrão.

### Modelo recomendado para sistemas com CPF e CNPJ na mesma entidade

Se a tabela armazena documentos brasileiros diferentes:

- `id`
- `document_number`
- `document_type`
- `document_country_code`

Nesse cenário:

- `document_number` deve ser texto;
- `document_type` pode diferenciar `CPF`, `CNPJ`, `CAEPF` ou outros;
- `document_country_code` evita acoplamento futuro quando o domínio cresce.

### Modelo recomendado para SaaS multi-país

Se o produto opera em mais de um país, a modelagem mais resiliente é:

- `id`
- `registration_number`
- `registration_type`
- `country_code`

Isso evita prender a arquitetura a um campo chamado `cnpj` quando o sistema, na prática, já lida com múltiplos identificadores regulatórios.

## O que tratar com nuance

### "CPF/CNPJ são chaves candidatas"

Em modelagem, podem ser chaves de negócio únicas. Isso não significa que devam ser a chave primária física da tabela.

O padrão mais seguro para sistema real continua sendo:

- chave primária técnica;
- documento como chave de negócio;
- integridade aplicada por `UNIQUE INDEX`, constraint ou regra de domínio.

### "`VARCHAR(14)` e pronto"

Só parcialmente.

- para CNPJ sem máscara, cabe;
- para valor mascarado, não cabe;
- para CPF e CNPJ compartilhando a mesma coluna, pode ser insuficiente dependendo da estratégia;
- para ambientes multi-país, não escala.

### "Stored procedure resolve"

Ajuda no banco, mas o problema atravessa:

- ORM;
- API;
- frontend;
- integrações;
- filas;
- cache;
- ETL;
- relatórios;
- documentos fiscais eletrônicos.

## Padrão de armazenamento recomendado

Para o ecossistema AS-CNPJ, a recomendação base é:

- armazenar sem máscara;
- normalizar para caixa alta;
- validar antes de persistir;
- expor formatação só na borda de UI ou relatório;
- manter índice ou constraint sobre o valor normalizado;
- evitar coluna numérica para documento.

## Checklist de migração por camada

### Banco de dados

- localizar colunas `INT`, `BIGINT`, `NUMERIC`, `NUMBER` ou equivalentes usadas para documento;
- revisar colunas `CHAR(14)` e `VARCHAR(14)` que assumem somente dígitos;
- revisar índices, constraints, chaves únicas e FKs indiretas;
- revisar procedures, triggers e functions;
- revisar views materializadas, relatórios e exportações.

### ORM e camada de domínio

- remover casts numéricos;
- revisar validações internas;
- revisar serialização e desserialização;
- revisar mapeamentos de entidades e constraints;
- revisar dados de carga, fixtures e factories.

### API

- revisar contratos OpenAPI, JSON Schema e GraphQL;
- revisar exemplos de payload;
- revisar mensagens de erro e códigos de validação;
- garantir compatibilidade com entrada mascarada e não mascarada quando isso fizer sentido.

### Frontend

- revisar máscara;
- revisar regex;
- revisar placeholders;
- revisar mensagens de ajuda;
- garantir que letras nas 12 primeiras posições não sejam rejeitadas por componentes antigos.

### Integrações

- revisar ERP;
- revisar faturamento;
- revisar compliance e onboarding;
- revisar gateways;
- revisar filas e eventos;
- revisar ETL e data lake;
- revisar parceiros que tratam CNPJ como apenas numérico.

## Impacto em DFe e ecossistema fiscal

A preocupação da comunidade com `NF-e`, `CT-e`, `MDF-e`, `NFC-e` e fluxos correlatos é legítima.

Há documentação oficial do ecossistema DFe tratando do CNPJ alfanumérico nos sistemas de autorização. Isso significa que o impacto vai além da validação isolada do documento e alcança:

- emissão;
- autorização;
- schemas;
- integrações com middleware fiscal;
- armazenamento de XML;
- regras de parsing e roteamento.

Fontes oficiais para acompanhamento:

- Portal DFe / Conformidade Fácil  
  https://dfe-portal.svrs.rs.gov.br/Cff/Documentos
- Portal MDF-e  
  https://dfe-portal.svrs.rs.gov.br/mdfe/Documentos

Conclusão prática:

- não trate CNPJ alfanumérico como tema apenas de cadastro;
- inclua o time fiscal e os responsáveis por DFe no plano de migração;
- verifique nota técnica, schema e cronograma específicos de cada documento eletrônico.

## O que está confirmado pela Receita Federal

Fontes principais:

- anúncio oficial  
  https://www.gov.br/receitafederal/pt-br/assuntos/noticias/2024/outubro/cnpj-tera-letras-e-numeros-a-partir-de-julho-de-2026
- cálculo do DV  
  https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/publicacoes/documentos-tecnicos/cnpj
- perguntas e respostas  
  https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/publicacoes/perguntas-e-respostas/cnpj/cnpj-alfanumerico.pdf/view

Pontos confirmados:

- julho de 2026 continua como marco oficial;
- os CNPJs atuais permanecem válidos;
- os dois formatos coexistem;
- as 12 primeiras posições aceitam `A-Z0-9`;
- os 2 dígitos verificadores continuam numéricos;
- o cálculo usa módulo 11 com conversão `ASCII - 48`;
- novas inscrições ainda podem eventualmente sair totalmente numéricas, porque a atribuição é aleatória.

## Como a org AS-CNPJ pode ajudar a comunidade

O papel mais útil da org não é só publicar bibliotecas. É reduzir ambiguidade e retrabalho.

A org pode ajudar com:

- bibliotecas autorais por linguagem, com comportamento convergente;
- vetores compartilhados que sirvam de contrato entre runtimes;
- documentação clara sobre modelagem e migração;
- exemplos de armazenamento correto;
- checklists de impacto sistêmico;
- curadoria de fontes oficiais para Receita Federal e DFe;
- material público que ajude times de produto, plataforma, dados e fiscal a falar a mesma língua.

## Recomendação objetiva para times técnicos

Se você precisa agir agora:

1. trate documento como texto;
2. remova dependências de tipos numéricos;
3. normalize e indexe o valor canônico;
4. revise API, frontend, integrações e fiscal;
5. teste legado numérico e novo formato no mesmo fluxo;
6. trate DFe como frente específica do projeto, não como detalhe.
