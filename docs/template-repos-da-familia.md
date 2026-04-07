# Template de Repos da Familia

Idiomas: **Português (Brasil)** | [English](template-repos-da-familia.en.md) | [Español](template-repos-da-familia.es.md) | [Français](template-repos-da-familia.fr.md)

Este documento define o padrao minimo para qualquer repositorio do ecossistema **AS-CNPJ**.

## Estrutura minima

Todo repo do ecossistema deve conter:

```text
repo/
  README.md
  LICENSE
  CHANGELOG.md
  SECURITY.md
  CONTRIBUTING.md
  docs/
    api.md
    decisoes.md
  src/
  test/
```

Se a linguagem exigir arquivos adicionais de build, pacote ou workspace, eles entram sem alterar esse minimo.

## README minimo

Todo README de repo derivado deve responder rapidamente:

- o que a biblioteca faz;
- quais formatos aceita;
- se suporta CNPJ numerico e alfanumerico;
- como instalar;
- exemplos minimos;
- como rodar testes;
- status de estabilidade.

## API minima esperada

Sempre que a linguagem permitir, manter este contrato conceitual:

- `normalize`
- `isValid`
- `format`
- `assertValid`
- `calculateCheckDigits`

Pode haver adaptacao idiomatica por linguagem, mas a semantica deve continuar equivalente.

## Comportamento minimo obrigatorio

Toda biblioteca do ecossistema deve:

- aceitar entrada mascarada e nao mascarada;
- normalizar para caixa alta;
- validar os 14 caracteres finais apos saneamento;
- exigir DV numerico;
- suportar CNPJ numerico legado;
- suportar CNPJ alfanumerico;
- ter modo estrito quando fizer sentido na linguagem;
- rejeitar caracteres fora da regra oficial.

## Testes minimos obrigatorios

Toda biblioteca do ecossistema deve testar:

- exemplo oficial da Receita `12.ABC.345/01DE-35`;
- ao menos um CNPJ numerico valido;
- ao menos um CNPJ alfanumerico valido;
- DV invalido;
- entrada vazia;
- entrada com tipo invalido, quando aplicavel;
- entrada com mascara;
- entrada sem mascara;
- normalizacao de caixa baixa para alta;
- repeticoes triviais invalidas.

## Arquivos recomendados

Quando o repo amadurecer:

- `.github/workflows/ci.yml`
- `examples/`
- `benchmarks/`

## Politica de versao

Recomendacao:

- `0.x` enquanto a API do ecossistema ainda estiver estabilizando;
- `1.0.0` apenas quando a semantica principal estiver congelada e testada em producao.

## Politica de release

Cada release deve declarar claramente:

- alteracoes funcionais;
- correcao de bug;
- impacto em compatibilidade;
- novos vetores de teste;
- mudancas de documentacao.

## Relacao com o hub

Cada repo derivado deve apontar para o hub `as-cnpj` como origem de:

- manifesto;
- especificacao;
- vetores de teste compartilhados;
- diretrizes de governanca.

## Checklist de criacao de novo repo

1. Criar o repo com naming padrao da familia.
2. Publicar README minimo.
3. Implementar o nucleo do algoritmo sem dependencias desnecessarias.
4. Portar os vetores de teste oficiais do ecossistema.
5. Garantir consistencia de API com o hub.
6. Publicar primeira versao somente depois de testes automatizados verdes.
