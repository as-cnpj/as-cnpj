# Portfólio de Bibliotecas

Idiomas: **Português (Brasil)** | [English](portfolio-de-bibliotecas.en.md) | [Español](portfolio-de-bibliotecas.es.md) | [Français](portfolio-de-bibliotecas.fr.md)

Este repositório **não é um catálogo de bibliotecas de terceiros**.

Ele é o hub central do ecossistema **AS-CNPJ**, pensado para apresentar, organizar e governar bibliotecas **autorais**, uma por linguagem, todas baseadas na mesma especificação oficial.

## Papel Deste Hub

O hub existe para:

- servir de banner público do tema;
- centralizar documentação e posicionamento do projeto;
- publicar regras oficiais, vetores de teste e decisões técnicas;
- apontar para os repositórios de cada linguagem;
- manter consistência entre APIs e comportamento.

## Família de Repositórios Planejada

| Repo | Papel | Status inicial |
| --- | --- | --- |
| `as-cnpj` | Hub central, documentação, vetores de teste, governança e visão geral | Atual |
| `as-cnpj-js` | Biblioteca autoral para JavaScript/TypeScript | Publicado |
| `as-cnpj-python` | Biblioteca autoral para Python | Planejado |
| `as-cnpj-java` | Biblioteca autoral para Java | Planejado |
| `as-cnpj-dotnet` | Biblioteca autoral para C# /.NET | Planejado |
| `as-cnpj-go` | Biblioteca autoral para Go | Planejado |
| `as-cnpj-php` | Biblioteca autoral para PHP | Opcional |
| `as-cnpj-rust` | Biblioteca autoral para Rust | Opcional |

## Ordem Recomendada de Execução

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

## Padrão de Naming

- repo hub: `as-cnpj`
- repos por linguagem: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`
- pacotes sugeridos:
  - npm: `@as-cnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Contrato Entre Bibliotecas

Toda biblioteca do ecossistema deve:

- validar CNPJ numérico e alfanumérico;
- compartilhar a mesma semântica de normalização;
- compartilhar o mesmo conjunto de vetores de teste;
- documentar claramente modo permissivo e modo estrito;
- manter comportamento previsível para entrada mascarada e não mascarada;
- evitar dependências desnecessárias no núcleo do algoritmo.

## Fonte de Verdade do Ecossistema

Mesmo após a publicação dos repos derivados:

- o manifesto fica no hub;
- a especificação fica no hub;
- os vetores de teste ficam no hub;
- o template de novos repos fica no hub.

Isso evita que cada linguagem comece a "inventar sua própria versão" do projeto.
