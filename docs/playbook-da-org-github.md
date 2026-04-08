# Playbook da Org GitHub

Idiomas: **Português (Brasil)** | [English](playbook-da-org-github.en.md) | [Español](playbook-da-org-github.es.md) | [Français](playbook-da-org-github.fr.md)

## Objetivo

Padronizar a apresentação, naming e governança da org `as-cnpj` e dos repositórios da família.

## Modelo da Org

- **Uma org única**: `as-cnpj`
- **Um repo central para governança**: `as-cnpj`
- **Um repo por biblioteca**: `as-cnpj-js`, `as-cnpj-python`, `as-cnpj-java`, `as-cnpj-dotnet`, `as-cnpj-go`

O hub centraliza documentação, vetores de teste, auditoria e governança.
Cada repo por linguagem centraliza apenas código daquela linguagem.

## Naming

- hub: `as-cnpj`
- repos derivados: `as-cnpj-{linguagem}`
- pacotes sugeridos:
  - npm: `@ascnpj/core`
  - PyPI: `as-cnpj`
  - Maven: `br.com.ascnpj:as-cnpj`
  - NuGet: `AsCnpj`

## Descrição Curta Sugerida para a Org

Bibliotecas autorais para validação de CNPJ numérico e alfanumérico, com especificação compartilhada e foco em consistência entre linguagens.

## Descrição Curta Sugerida por Repo

| Repo | Descrição |
| --- | --- |
| `as-cnpj` | Hub central do ecossistema AS-CNPJ: manifesto, especificação, vetores de teste e governança. |
| `as-cnpj-js` | Biblioteca autoral AS-CNPJ para JavaScript e TypeScript. |
| `as-cnpj-python` | Biblioteca autoral AS-CNPJ para Python. |
| `as-cnpj-java` | Biblioteca autoral AS-CNPJ para Java. |
| `as-cnpj-dotnet` | Biblioteca autoral AS-CNPJ para C# e .NET. |
| `as-cnpj-go` | Biblioteca autoral AS-CNPJ para Go. |

## Topics Sugeridos

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

## Ordem de Criação Recomendada

1. configurar bem `as-cnpj`;
2. amadurecer `as-cnpj-js`;
3. amadurecer `as-cnpj-python`;
4. repetir o processo nas demais linguagens.

Não abrir vários repos vazios ao mesmo tempo.
Abrir um repo, estabilizar, documentar, publicar, e só depois seguir para o próximo.

## Política Visual

Cada repo deve transmitir imediatamente:

- que pertence ao ecossistema AS-CNPJ;
- qual linguagem atende;
- se já está pronto para uso ou ainda está em fase inicial.

## Estrutura do Topo do README

Todo repo derivado deve abrir com:

1. nome do repo;
2. uma frase curta de posicionamento;
3. status do projeto;
4. instalação;
5. exemplo mínimo;
6. link para o hub `as-cnpj`.

## Regra de Governança

- o hub centraliza documentação, vetores de teste, auditoria e governança;
- cada repo por linguagem centraliza apenas código daquela linguagem;
- os vetores de teste devem ser compartilhados e versionados de forma independente;
- toda implementação deve provar compatibilidade com os vetores do hub;
- novos repos devem nascer apenas depois de seguir o template do hub.
