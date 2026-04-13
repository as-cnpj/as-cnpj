# Roadmap de Ferramentas e Capacidades

Este documento organiza o que faz diferença de produto no ecossistema AS-CNPJ, além da validação unitária básica.

O objetivo é orientar a evolução das bibliotecas e do site com foco em utilidade real.

## Tese

Validação de um item por vez resolve o núcleo, mas não resolve toda a experiência de adoção.

As próximas capacidades com melhor custo-benefício são:

- ferramentas públicas no site;
- normalização e formatação em lote;
- utilitários de migração e homologação.

## O que vale construir no site

### 1. Validador de CNPJ

Ferramenta pública simples:

- recebe um CNPJ;
- normaliza;
- informa se é válido;
- mostra formato canônico;
- mostra se passou no modo estrito.

Valor:

- ajuda adoção;
- reduz dúvida de integração;
- funciona como prova pública do comportamento do ecossistema.

### 2. Gerador de exemplos válidos para teste

Aqui a recomendação é de naming:

- evitar chamar de "gerador de novos CNPJs";
- preferir **gerador de exemplos válidos para teste**.

Motivo:

- evita confusão com emissão real de inscrições;
- deixa claro o escopo de homologação;
- reduz risco semântico e regulatório.

Regras sugeridas:

- gerar apenas exemplos estruturalmente válidos;
- rotular claramente como teste;
- opcionalmente cruzar comportamento com o simulador oficial da Receita.

### 3. Formatador / normalizador

Ferramenta simples, mas útil:

- entrada mascarada ou sem máscara;
- saída normalizada;
- saída formatada;
- indicação se a entrada é inválida.

### 4. Playground de API

Página mostrando:

- chamada JS;
- chamada Python;
- resultado esperado;
- diferença entre modo permissivo e estrito.

## O que vale construir nas bibliotecas

### Núcleo obrigatório

Toda biblioteca deve manter:

- `normalize`
- `isValid`
- `format`
- `assertValid`
- `calculateCheckDigits`

### Capacidades recomendadas de segunda camada

#### 1. Validação em lote

Status atual:

- entregue em `as-cnpj-js`
- entregue em `as-cnpj-python`
- recomendada como padrão para as próximas linguagens principais

Possíveis nomes:

- `validateMany`
- `isValidMany`
- `normalizeMany`
- `formatMany`

Contrato recomendado:

- preservar ordem de entrada;
- não esconder erro por concorrência;
- não fazer IO;
- operar de forma determinística.

Formato de retorno recomendado:

```txt
[
  {
    index,
    input,
    normalized,
    formatted,
    valid,
    reason
  }
]
```

Esse formato ajuda:

- saneamento de base;
- importação;
- homologação;
- suporte;
- auditoria.

#### 2. Resumo agregado

Além do retorno item a item, vale expor um agregador simples:

- quantidade total;
- quantidade válida;
- quantidade inválida;
- lista de motivos mais comuns.

#### 3. Códigos de erro estáveis

Especialmente em lote, mensagens soltas não escalam.

Vale evoluir para códigos como:

- `INVALID_TYPE`
- `INVALID_LENGTH`
- `INVALID_ASCII`
- `INVALID_CHECK_DIGIT`
- `TRIVIAL_REPETITION`
- `INVALID_STRICT_FORMAT`

#### 4. Iteração eficiente

Para bibliotecas de backend:

- aceitar listas;
- no futuro, considerar iteráveis ou streams;
- manter o núcleo simples antes de abstrações maiores.

## Prioridade recomendada

### Alta prioridade

- validador simples no site;
- gerador de exemplos válidos para teste;
- formatador/normalizador público;
- consolidar batch como padrão nas próximas bibliotecas.

### Média prioridade

- códigos de erro estáveis;
- normalização e formatação em lote;
- exportação CSV no site;
- playground de API.

### Baixa prioridade

- benchmark público entre linguagens;
- SDK de migração;
- stream processing avançado.

## Recomendação de produto

Se a ideia é investir onde a comunidade percebe valor mais rápido:

1. validador simples no site;
2. gerador de exemplos válidos para teste;
3. formatador/normalizador público;
4. batch consistente nas bibliotecas.

## Regra de desenho

Toda nova capacidade deve respeitar isto:

- o núcleo continua pequeno;
- o comportamento continua previsível;
- a API unitária continua sendo a referência;
- a camada nova não pode introduzir dependência desnecessária no algoritmo central.
