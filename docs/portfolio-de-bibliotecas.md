# Portfólio de Bibliotecas

Idiomas: **Português (Brasil)** | [English](portfolio-de-bibliotecas.en.md) | [Español](portfolio-de-bibliotecas.es.md) | [Français](portfolio-de-bibliotecas.fr.md)

Este repositório não é um catálogo de bibliotecas de terceiros. Ele é o hub central do ecossistema **AS-CNPJ**, pensado para apresentar, organizar e governar bibliotecas autorais, uma por linguagem, todas baseadas no mesmo contrato técnico.

## Papel do hub

O hub existe para:

- centralizar documentação e posicionamento do projeto;
- publicar fontes oficiais, vetores de teste e decisões técnicas;
- apontar para os repositórios públicos de cada linguagem;
- manter consistência entre contratos, nomenclatura e comportamento.

## Família de repositórios

| Repo | Papel | Status |
| --- | --- | --- |
| `as-cnpj` | Hub central, documentação, vetores, auditoria e governança | Atual |
| `as-cnpj-js` | Biblioteca autoral para JavaScript/TypeScript, com API unitária e validação em lote | Publicado |
| `as-cnpj-python` | Biblioteca autoral para Python, com API unitária e validação em lote | Publicado |
| `as-cnpj-java` | Biblioteca autoral para Java | Planejado |
| `as-cnpj-dotnet` | Biblioteca autoral para C# /.NET | Planejado |
| `as-cnpj-go` | Biblioteca autoral para Go | Planejado |
| `as-cnpj-php` | Biblioteca autoral para PHP | Opcional |
| `as-cnpj-rust` | Biblioteca autoral para Rust | Opcional |

## Ordem recomendada

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

Essa ordem faz sentido porque:

- JS/TS atende browser, Node e integrações rápidas;
- Python cobre automação, backends e data stacks;
- Java e .NET entram forte em contexto corporativo;
- Go fecha bem serviços, CLIs e integrações de alta performance.

## Padrão de naming

- hub: `as-cnpj`
- repos por linguagem: `as-cnpj-{linguagem}`
- pacotes sugeridos:
  - npm: `@ascnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Contrato entre bibliotecas

Toda biblioteca do ecossistema deve:

- validar CNPJ numérico e alfanumérico;
- compartilhar a mesma semântica de normalização;
- compartilhar o mesmo conjunto de vetores de teste;
- documentar claramente modo permissivo e modo estrito;
- manter comportamento previsível para entrada mascarada e não mascarada;
- evitar dependências desnecessárias no núcleo do algoritmo.

As bibliotecas já publicadas também passaram a expor capacidade de validação em lote:

- `as-cnpj-js`: `validateMany` e `validateManyCNPJ`
- `as-cnpj-python`: `validate_many` e `validate_many_cnpj`

## Fonte de verdade do ecossistema

Mesmo após a publicação dos repos derivados:

- o manifesto fica no hub;
- a especificação fica no hub;
- os vetores de teste ficam no hub;
- a governança e os templates ficam no hub.

Isso evita que cada linguagem comece a divergir silenciosamente do projeto.

## Próximo movimento

Com `as-cnpj-js` e `as-cnpj-python` já publicados, o próximo movimento recomendado da org passa a ser `as-cnpj-java`.
