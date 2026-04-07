# Fontes Oficiais e Regras

Idiomas: **Português (Brasil)** | [English](fontes-oficiais-e-regras.en.md) | [Español](fontes-oficiais-e-regras.es.md) | [Français](fontes-oficiais-e-regras.fr.md)

## Fontes oficiais principais

- Receita Federal: anuncio oficial sobre a mudanca para o formato alfanumerico  
  https://www.gov.br/receitafederal/pt-br/assuntos/noticias/2024/outubro/cnpj-tera-letras-e-numeros-a-partir-de-julho-de-2026
- Receita Federal: pagina tecnica do calculo do DV do CNPJ alfanumerico  
  https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/publicacoes/documentos-tecnicos/cnpj
- Receita Federal: FAQ oficial em PDF  
  https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/publicacoes/perguntas-e-respostas/cnpj/cnpj-alfanumerico.pdf
- Gov.br / Receita Federal: simulador oficial de inscricao alfanumerica  
  https://www.gov.br/pt-br/servicos/simulador-cnpj-alfanumerico

## O que esta confirmado

- O marco oficial consultado e **julho de 2026**.
- O tamanho do CNPJ continua em **14 posicoes**.
- As **12 primeiras posicoes** passam a aceitar letras maiusculas de `A` a `Z` e numeros de `0` a `9`.
- Os **2 ultimos caracteres** continuam sendo digitos verificadores numericos.
- O calculo do DV continua em **modulo 11**.
- A conversao para calculo usa **codigo ASCII menos 48**.
- CNPJs antigos nao mudam.
- Havera convivencia entre CNPJs numericos e alfanumericos.
- Filiais tambem podem ter letras no numero de ordem.
- A Receita informa que a atribuicao sera aleatoria, entao **mesmo apos julho de 2026 ainda pode surgir um novo CNPJ totalmente numerico**.

## Ponto de rigor sobre datas

O video transcrito cita **1 de julho de 2026**, mas nas fontes oficiais consultadas a formulacao recorrente e **"julho de 2026"** ou **"a partir de julho de 2026"**.

Conclusao pratica:

- trate **julho de 2026** como marco oficial confirmado;
- nao assuma o dia 1 como verdade absoluta sem ato normativo mais especifico na sua trilha de compliance.

## Regra de validacao

Entrada normalizada:

- converter para maiusculas;
- remover caracteres que nao sejam `A-Z0-9`;
- exigir 14 caracteres no total;
- exigir regex final `^[A-Z0-9]{12}[0-9]{2}$`.

Conversao para calculo:

- `0` a `9` continuam equivalendo a `0` a `9`;
- `A` vira `17`, `B` vira `18`, ..., `Z` vira `42`;
- formula: `valor = codigoASCII(caractere) - 48`.

Pesos:

- primeiro DV: `5 4 3 2 9 8 7 6 5 4 3 2`
- segundo DV: `6 5 4 3 2 9 8 7 6 5 4 3 2`

Regra do digito:

- `resto < 2 => DV = 0`
- caso contrario `DV = 11 - resto`

## Implicacoes de arquitetura

### Banco de dados

- coluna de CNPJ deve ser `CHAR(14)` ou `VARCHAR(14)` sem mascara;
- se salvar com mascara, reserve 18 caracteres;
- nao use tipo numerico;
- revise indices, constraints e contratos de integracao.

### Backend

- normalize para maiusculas antes de persistir ou comparar;
- aceite tanto numerico quanto alfanumerico na mesma regra;
- nao escreva "if CNPJ novo / else CNPJ antigo" se a unica diferenca for a conversao do caractere.

### Frontend

- ajuste mascara e regex;
- nao rejeite letras nas 12 primeiras posicoes;
- preserve UX para CNPJ legado.

### Integracoes

- revise emissores fiscais, ERPs, gateways, ETLs e validacoes de terceiros;
- revise schemas OpenAPI, JSON Schema, GraphQL e contratos de fila;
- revise pipelines que assumem somente digitos.

## Checklist minimo de migracao

- armazenar CNPJ como texto;
- aceitar `A-Z0-9` nas 12 primeiras posicoes;
- manter DV numerico;
- validar com modulo 11 + `ASCII - 48`;
- cobrir coexistencia entre formatos;
- cobrir novos cadastros numericos apos julho de 2026;
- incluir casos com caixa baixa na entrada e normalizacao para caixa alta;
- validar comportamento com mascara e sem mascara;
- testar toda integracao que serialize CNPJ.
