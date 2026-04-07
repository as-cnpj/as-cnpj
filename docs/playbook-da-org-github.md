# Playbook da Org GitHub

Idiomas: **Portugues (Brasil)** | [English](playbook-da-org-github.en.md) | [Espanol](playbook-da-org-github.es.md) | [Francais](playbook-da-org-github.fr.md)

## Objetivo

Padronizar a apresentacao, naming e governanca da org `as-cnpj` e dos repositorios da familia.

## Modelo da org

- **Uma org unica**: `as-cnpj`
- **Um repo central para governanca**: `as-cnpj`
- **Um repo por biblioteca**: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

O hub centraliza documentacao, vetores de teste e benchmarks.
Cada repo por linguagem centraliza apenas codigo daquela linguagem.

## Naming

- hub: `as-cnpj` (marca curta do ecossistema, baseada na origem ASCII)
- repos derivados: `as-cnpj-{linguagem}`
- pacotes sugeridos:
  - npm: `@as-cnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Descricao curta sugerida para a org

Bibliotecas autorais para validacao de CNPJ numerico e alfanumerico, com especificacao compartilhada e foco em consistencia entre linguagens.

## Repositorios para pin

Quando existirem:

1. `as-cnpj`
2. `as-cnpj-js`
3. `as-cnpj-python`
4. `as-cnpj-java`
5. `as-cnpj-dotnet`
6. `as-cnpj-go`

## Descricao curta sugerida por repo

| Repo | Descricao |
| --- | --- |
| `as-cnpj` | Hub central do ecossistema AS-CNPJ: manifesto, especificacao, vetores de teste e governanca. |
| `as-cnpj-js` | Biblioteca autoral AS-CNPJ para JavaScript e TypeScript. |
| `as-cnpj-python` | Biblioteca autoral AS-CNPJ para Python. |
| `as-cnpj-java` | Biblioteca autoral AS-CNPJ para Java. |
| `as-cnpj-dotnet` | Biblioteca autoral AS-CNPJ para C# e .NET. |
| `as-cnpj-go` | Biblioteca autoral AS-CNPJ para Go. |

## Topics sugeridos

Topics comuns:

- `cnpj`
- `cnpj-alfanumerico`
- `brasil`
- `validacao`
- `documentos-brasileiros`

Topics por repo:

- `as-cnpj`
- `typescript`
- `python`
- `java`
- `dotnet`
- `golang`

## Ordem de criacao recomendada

1. configurar bem `as-cnpj`;
2. amadurecer `as-cnpj-js`;
3. publicar o primeiro pacote do ecossistema;
4. repetir o processo nas demais linguagens.

Nao abrir varios repos vazios ao mesmo tempo.
Abrir um repo, estabilizar, documentar, publicar, e so depois seguir para o proximo.

## Politica visual

Cada repo deve transmitir imediatamente:

- que pertence ao ecossistema AS-CNPJ;
- qual linguagem atende;
- se ja esta pronto para uso ou ainda esta em fase inicial.

## Estrutura do topo do README

Todo repo derivado deve abrir com:

1. nome do repo;
2. uma frase curta de posicionamento;
3. status do projeto;
4. instalacao;
5. exemplo minimo;
6. link para o hub `as-cnpj`.

## Regra de governanca

- o hub centraliza documentacao, vetores de teste e benchmarks;
- cada repo por linguagem centraliza apenas codigo daquela linguagem;
- os vetores de teste devem ser compartilhados e versionados de forma independente;
- toda implementacao deve provar compatibilidade com os vetores do hub;
- novos repos devem nascer apenas depois de seguir o template do hub.
