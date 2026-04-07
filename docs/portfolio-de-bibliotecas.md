# Portfolio de Bibliotecas

Idiomas: **Portugues (Brasil)** | [English](portfolio-de-bibliotecas.en.md) | [Espanol](portfolio-de-bibliotecas.es.md) | [Francais](portfolio-de-bibliotecas.fr.md)

Este repositorio **nao e um catalogo de bibliotecas de terceiros**.

Ele e o hub central do ecossistema **AS-CNPJ**, pensado para apresentar, organizar e governar bibliotecas **autorais**, uma por linguagem, todas baseadas na mesma especificacao oficial.

## Papel deste hub

O hub existe para:

- servir de banner publico do tema;
- centralizar documentacao e posicionamento do projeto;
- publicar regras oficiais, vetores de teste e decisoes tecnicas;
- apontar para os repositorios de cada linguagem;
- manter consistencia entre APIs e comportamento.

## Familia de repositorios planejada

| Repo | Papel | Status inicial |
| --- | --- | --- |
| `as-cnpj` | Hub central, documentacao, vetores de teste, governanca e visao geral | Atual |
| `as-cnpj-js` | Biblioteca autoral para JavaScript/TypeScript | Publicado |
| `as-cnpj-python` | Biblioteca autoral para Python | Planejado |
| `as-cnpj-java` | Biblioteca autoral para Java | Planejado |
| `as-cnpj-dotnet` | Biblioteca autoral para C# /.NET | Planejado |
| `as-cnpj-go` | Biblioteca autoral para Go | Planejado |
| `as-cnpj-php` | Biblioteca autoral para PHP | Opcional |
| `as-cnpj-rust` | Biblioteca autoral para Rust | Opcional |

## Ordem recomendada de execucao

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

Essa ordem faz sentido porque:

- JS/TS atende browser, Node e integracoes rapidas;
- Python cobre automacao, backends e data stacks;
- Java e .NET entram forte em contexto corporativo;
- Go fecha bem servicos, CLIs e integracoes de alta performance.

## Padrao de naming

- repo hub: `as-cnpj`
- repos por linguagem: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`
- pacotes sugeridos:
  - npm: `@as-cnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Contrato entre bibliotecas

Toda biblioteca do ecossistema deve:

- validar CNPJ numerico e alfanumerico;
- compartilhar a mesma semantica de normalizacao;
- compartilhar o mesmo conjunto de vetores de teste;
- documentar claramente modo permissivo e modo estrito;
- manter comportamento previsivel para entrada mascarada e nao mascarada;
- evitar dependencias desnecessarias no nucleo do algoritmo.

## Fonte de verdade do ecossistema

Mesmo apos a publicacao dos repos derivados:

- o manifesto fica no hub;
- a especificacao fica no hub;
- os vetores de teste ficam no hub;
- o template de novos repos fica no hub.

Isso evita que cada linguagem comece a "inventar sua propria versao" do projeto.
