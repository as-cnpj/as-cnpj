# Fontes Oficiais e Regras

Idiomas: **Português (Brasil)** | [English](fontes-oficiais-e-regras.en.md) | [Español](fontes-oficiais-e-regras.es.md) | [Français](fontes-oficiais-e-regras.fr.md)

## Fontes Oficiais Principais

- Receita Federal: anúncio oficial sobre a mudança para o formato alfanumérico  
  https://www.gov.br/receitafederal/pt-br/assuntos/noticias/2024/outubro/cnpj-tera-letras-e-numeros-a-partir-de-julho-de-2026
- Receita Federal: página técnica do cálculo do DV do CNPJ alfanumérico  
  https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/publicacoes/documentos-tecnicos/cnpj
- Receita Federal: FAQ oficial em PDF  
  https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/publicacoes/perguntas-e-respostas/cnpj/cnpj-alfanumerico.pdf
- Gov.br / Receita Federal: simulador oficial de inscrição alfanumérica  
  https://www.gov.br/pt-br/servicos/simulador-cnpj-alfanumerico

## O Que Está Confirmado

- O marco oficial consultado é **julho de 2026**.
- O tamanho do CNPJ continua em **14 posições**.
- As **12 primeiras posições** passam a aceitar letras maiúsculas de `A` a `Z` e números de `0` a `9`.
- Os **2 últimos caracteres** continuam sendo dígitos verificadores numéricos.
- O cálculo do DV continua em **módulo 11**.
- A conversão para cálculo usa **código ASCII menos 48**.
- CNPJs antigos não mudam.
- Haverá convivência entre CNPJs numéricos e alfanuméricos.
- Filiais também podem ter letras no número de ordem.
- A Receita informa que a atribuição será aleatória, então **mesmo após julho de 2026 ainda pode surgir um novo CNPJ totalmente numérico**.

## Ponto de Rigor Sobre Datas

O vídeo transcrito cita **1 de julho de 2026**, mas nas fontes oficiais consultadas a formulação recorrente é **"julho de 2026"** ou **"a partir de julho de 2026"**.

Conclusão prática:

- trate **julho de 2026** como marco oficial confirmado;
- não assuma o dia 1 como verdade absoluta sem ato normativo mais específico na sua trilha de compliance.

## Regra de Validação

Entrada normalizada:

- converter para maiúsculas;
- remover caracteres que não sejam `A-Z0-9`;
- exigir 14 caracteres no total;
- exigir regex final `^[A-Z0-9]{12}[0-9]{2}$`.

Conversão para cálculo:

- `0` a `9` continuam equivalendo a `0` a `9`;
- `A` vira `17`, `B` vira `18`, ..., `Z` vira `42`;
- fórmula: `valor = codigoASCII(caractere) - 48`.

Pesos:

- primeiro DV: `5 4 3 2 9 8 7 6 5 4 3 2`
- segundo DV: `6 5 4 3 2 9 8 7 6 5 4 3 2`

Regra do dígito:

- `resto < 2 => DV = 0`
- caso contrário `DV = 11 - resto`

## Implicações de Arquitetura

### Banco de dados

- coluna de CNPJ deve ser `CHAR(14)` ou `VARCHAR(14)` sem máscara;
- se salvar com máscara, reserve 18 caracteres;
- não use tipo numérico;
- revise índices, constraints e contratos de integração.

### Backend

- normalize para maiúsculas antes de persistir ou comparar;
- aceite tanto numérico quanto alfanumérico na mesma regra;
- não escreva "if CNPJ novo / else CNPJ antigo" se a única diferença for a conversão do caractere.

### Frontend

- ajuste máscara e regex;
- não rejeite letras nas 12 primeiras posições;
- preserve UX para CNPJ legado.

### Integrações

- revise emissores fiscais, ERPs, gateways, ETLs e validações de terceiros;
- revise schemas OpenAPI, JSON Schema, GraphQL e contratos de fila;
- revise pipelines que assumem somente dígitos.

## Checklist Mínimo de Migração

- armazenar CNPJ como texto;
- aceitar `A-Z0-9` nas 12 primeiras posições;
- manter DV numérico;
- validar com módulo 11 + `ASCII - 48`;
- cobrir coexistência entre formatos;
- cobrir novos cadastros numéricos após julho de 2026;
- incluir casos com caixa baixa na entrada e normalização para caixa alta;
- validar comportamento com máscara e sem máscara;
- testar toda integração que serialize CNPJ.
