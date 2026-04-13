# Portfolio de Bibliotecas

Idiomas: **Portugues (Brasil)** | [English](portfolio-de-bibliotecas.en.md) | [Espanol](portfolio-de-bibliotecas.es.md) | [Francais](portfolio-de-bibliotecas.fr.md)

Este repositorio nao e um catalogo de bibliotecas de terceiros.

Ele e o hub central do ecossistema **AS-CNPJ**, pensado para apresentar, organizar e governar bibliotecas **autorais**, uma por linguagem, todas baseadas na mesma especificacao oficial.

## Papel deste hub

O hub existe para:

- servir de banner publico do tema;
- centralizar documentacao e posicionamento do projeto;
- publicar regras oficiais, vetores de teste e decisoes tecnicas;
- apontar para os repositorios de cada linguagem;
- manter consistencia entre APIs e comportamento.

## Familia de repositorios

| Repo | Papel | Status |
| --- | --- | --- |
| `as-cnpj` | Hub central, documentacao, vetores de teste, governanca e visao geral | Atual |
| `as-cnpj-js` | Biblioteca autoral para JavaScript/TypeScript | Publicado em repositorio e npm |
| `as-cnpj-python` | Biblioteca autoral para Python | Publicado em repositorio e PyPI |
| `as-cnpj-java` | Biblioteca autoral para Java | Publicado em repositorio |
| `as-cnpj-go` | Biblioteca autoral para Go | Publicado em repositorio |
| `as-cnpj-dotnet` | Biblioteca autoral para C# /.NET | Planejado |
| `as-cnpj-php` | Biblioteca autoral para PHP | Opcional |
| `as-cnpj-rust` | Biblioteca autoral para Rust | Opcional |

## Ordem recomendada de execucao

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-go`
6. `as-cnpj-dotnet`

Essa ordem faz sentido porque:

- JS/TS atende browser, Node e integracoes rapidas;
- Python cobre automacao, backends e data stacks;
- Java entra forte em contexto corporativo;
- Go fecha bem servicos, CLIs e integracoes de alta performance;
- .NET continua como proxima frente recomendada para ambientes Microsoft.

## Padrao de naming

- repo hub: `as-cnpj`
- repos por linguagem: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-go`, `as-cnpj-dotnet`
- pacotes sugeridos:
  - npm: `@ascnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - Go module: `github.com/as-cnpj/as-cnpj-go`
  - NuGet: `AsCnpj`

## Contrato entre bibliotecas

Toda biblioteca do ecossistema deve:

- validar CNPJ numerico e alfanumerico;
- compartilhar a mesma semantica de normalizacao;
- compartilhar o mesmo conjunto de vetores de teste;
- documentar claramente modo permissivo e modo estrito;
- manter comportamento previsivel para entrada mascarada e nao mascarada;
- evitar dependencias desnecessarias no nucleo do algoritmo;
- expor API unitaria e validacao em lote quando isso fizer sentido idiomaticamente.

## Fonte de verdade do ecossistema

Mesmo apos a publicacao dos repos derivados:

- o manifesto fica no hub;
- a especificacao fica no hub;
- os vetores de teste ficam no hub;
- o template de novos repos fica no hub.
