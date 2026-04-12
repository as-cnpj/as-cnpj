# Roadmap de Ferramentas e Capacidades

Este documento organiza o que faz diferença de produto no ecossistema AS-CNPJ, além da validação unitária básica.

O objetivo é orientar a evolução das bibliotecas e do site com foco em utilidade real.

## Tese

Validação de um item por vez resolve o núcleo, mas não resolve toda a experiência de adoção.

As próximas capacidades com melhor custo-benefício são:

- validação em lote;
- normalização e formatação em lote;
- ferramentas públicas no site;
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

### 2. Validador em lote

Ferramenta para colar múltiplas linhas:

- uma entrada por linha;
- resultado por linha;
- resumo agregado;
- exportação opcional em CSV.

Valor:

- útil para saneamento de base;
- útil para homologação;
- útil para atendimento e suporte.

Recomendação:

- processamento local no navegador quando possível;
- sem upload obrigatório;
- sem persistência por padrão.

### 3. Gerador de exemplos válidos para teste

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

### 4. Formatador / normalizador

Ferramenta simples, mas útil:

- entrada mascarada ou sem máscara;
- saída normalizada;
- saída formatada;
- indicação se a entrada é inválida.

### 5. Playground de API

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

Recomendação forte para todas as linguagens principais.

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
- validador em lote no site;
- validação em lote no JS;
- validação em lote no Python.

### Média prioridade

- gerador de exemplos válidos para teste;
- formatador/normalizador público;
- códigos de erro estáveis;
- exportação CSV no site.

### Baixa prioridade

- benchmark público entre linguagens;
- SDK de migração;
- stream processing avançado.

## Recomendação de produto

Se a ideia é investir onde a comunidade percebe valor mais rápido:

1. validador simples no site;
2. validador em lote no site;
3. `validateMany` ou equivalente nas bibliotecas;
4. gerador de exemplos válidos para teste.

## Regra de desenho

Toda nova capacidade deve respeitar isto:

- o núcleo continua pequeno;
- o comportamento continua previsível;
- a API unitária continua sendo a referência;
- a camada nova não pode introduzir dependência desnecessária no algoritmo central.
