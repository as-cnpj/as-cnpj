# Auditoria de Segurança

Idiomas: **Português (Brasil)** | [English](AUDIT.en.md) | [Español](AUDIT.es.md) | [Français](AUDIT.fr.md)

Última atualização: **2026-04-07**

Este documento descreve as práticas de segurança e os resultados de auditoria do ecossistema AS-CNPJ, com foco na biblioteca JavaScript (`@ascnpj/core`).

## Superfície de Ataque

A biblioteca é **computação pura**: recebe string, retorna string ou boolean.

| Característica | Estado |
| --- | --- |
| Dependências de runtime | **Zero** |
| Acesso a rede | **Nenhum** |
| Acesso a filesystem | **Nenhum** |
| Acesso a variáveis de ambiente | **Nenhum** |
| Scripts de lifecycle (`preinstall`, `postinstall`) | **Nenhum** |
| Tamanho do pacote npm | **~4.4 KB** |

## Proteções Implementadas

### Validação de entrada

| Proteção | Descrição |
| --- | --- |
| Type guard | Todas as funções públicas verificam tipo antes de processar |
| Limite de tamanho | Entradas com mais de 18 caracteres são rejeitadas imediatamente |
| ASCII guard | Caracteres fora do range ASCII printável (`0x20`–`0x7E`) são rejeitados antes de qualquer processamento |
| Rejeição de repetições | CNPJs triviais (todos os caracteres iguais) são rejeitados |
| Normalização segura | `normalize` lança `TypeError` para entrada não-string em vez de retornar string vazia |

### Proteção contra ReDoS

Todas as expressões regulares usam quantificadores fixos e classes simples. Nenhuma regex tem grupo aninhado com quantificador.

| Regex | Padrão | Backtracking catastrófico? |
| --- | --- | --- |
| `PLAIN_CNPJ_PATTERN` | `^[A-Z0-9]{12}[0-9]{2}$` | Não |
| `MASKED_CNPJ_PATTERN` | `^[A-Z0-9]{2}\.[A-Z0-9]{3}\.[A-Z0-9]{3}\/[A-Z0-9]{4}-[0-9]{2}$` | Não |
| `CNPJ_BASE_PATTERN` | `^[A-Z0-9]{12}$` | Não |
| `REPEATED_CHARS_PATTERN` | `^([A-Z0-9])\1{13}$` | Não |
| `ASCII_PRINTABLE_ONLY` | `^[\x20-\x7E]*$` | Não |

### Proteção contra Unicode bypass

A função `String.prototype.toUpperCase()` pode expandir caracteres Unicode (ex: `ß` → `SS`). O guard ASCII rejeita qualquer caractere fora do range printável **antes** da chamada a `toUpperCase()`, eliminando esse vetor.

### Eficiência do núcleo

| Aspecto | Implementação |
| --- | --- |
| Sanitização | Executada uma única vez por chamada via `validateAndNormalize` interno |
| Cálculo de dígitos | Loop `for` direto, sem alocação de array intermediário |
| Formatação | Concatenação direta, sem `Array.join` |

## Conteúdo do Pacote npm

O campo `files` no `package.json` limita o conteúdo publicado a:

```
src/cnpj.js
src/index.js
src/index.d.ts
README.md
LICENSE
CHANGELOG.md
```

**Não são incluídos**: testes, documentação interna, scripts, vetores, `.env`, `.npmrc`, `node_modules`.

## Supply Chain

| Verificação | Estado |
| --- | --- |
| Zero dependências de runtime | Sim |
| Sem scripts de lifecycle no pacote | Sim |
| `.env` e `.npmrc` no `.gitignore` | Sim |
| CI automatizado (GitHub Actions) | Sim — Node 20 + 22 |
| Verificação de conteúdo do pacote no CI | Sim — `npm pack --dry-run` |
| Branch protection recomendada | Sim — require PR review + status checks |
| 2FA no npm | Recomendado — responsabilidade do maintainer |
| Provenance (`--provenance`) | Recomendado para publicação via CI |

## Cobertura de Testes (segurança)

| Cenário | Testado? |
| --- | --- |
| Entrada não-string em `normalize` (lança TypeError) | Sim |
| Entrada não-string em `calculateCheckDigits` (lança TypeError) | Sim |
| Entrada não-string em `isValid` (retorna false) | Sim |
| Entrada não-string em `assertValid` (lança TypeError) | Sim |
| Entrada não-string em `format` (retorna null) | Sim |
| Entrada com 10.000 caracteres (rejeição por tamanho) | Sim |
| Entrada com null byte (`\x00`) | Sim |
| Entrada com caractere Unicode (`\u00DF`) | Sim |
| DV inválido alfanumérico | Sim |
| DV inválido numérico | Sim |
| Repetições triviais | Sim |
| Entrada vazia | Sim |
| Modo estrito com formato não-canônico | Sim |
| Conformidade com vetores compartilhados | Sim |

## Fora de Escopo

- Validação de existência do CNPJ na Receita Federal (requer consulta online)
- Proteção contra timing attacks (não aplicável — não há comparação de segredos)
- Criptografia ou armazenamento seguro de CNPJs (responsabilidade da aplicação)

## Como Reportar Vulnerabilidades

Consulte [SECURITY.md](SECURITY.md).

## Histórico

| Data | Evento |
| --- | --- |
| 2026-04-07 | Auditoria inicial: análise de código, regex, supply chain, pacote npm |
