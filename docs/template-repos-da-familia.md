# Template de Repos da Família

Idiomas: **Português (Brasil)** | [English](template-repos-da-familia.en.md) | [Español](template-repos-da-familia.es.md) | [Français](template-repos-da-familia.fr.md)

Este documento define o padrão mínimo para qualquer repositório do ecossistema **AS-CNPJ**.

## Estrutura Mínima

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

Se a linguagem exigir arquivos adicionais de build, pacote ou workspace, eles entram sem alterar esse mínimo.

## README Mínimo

Todo README de repo derivado deve responder rapidamente:

- o que a biblioteca faz;
- quais formatos aceita;
- se suporta CNPJ numérico e alfanumérico;
- como instalar;
- exemplos mínimos;
- como rodar testes;
- status de estabilidade.

## Modelo Padrão de README

O modelo editorial recomendado para novos repos da família agora é o **modelo executivo** adotado em `as-cnpj-js`.

Template reutilizável:

- [Template de README executivo](template-readme-executivo-da-familia.md)

Esse template deve ser tratado como base preferencial para:

- `as-cnpj-python`
- `as-cnpj-java`
- `as-cnpj-dotnet`
- `as-cnpj-go`

Adaptações por linguagem são esperadas, mas a estrutura principal deve permanecer reconhecível:

- status;
- comece por aqui;
- problema que a biblioteca resolve;
- garantias centrais;
- API pública;
- exemplo mínimo;
- testes;
- vetores compartilhados;
- ecossistema;
- manutenção.

## API Mínima Esperada

Sempre que a linguagem permitir, manter este contrato conceitual:

- `normalize`
- `isValid`
- `format`
- `assertValid`
- `calculateCheckDigits`

Pode haver adaptação idiomática por linguagem, mas a semântica deve continuar equivalente.

## Comportamento Mínimo Obrigatório

Toda biblioteca do ecossistema deve:

- aceitar entrada mascarada e não mascarada;
- normalizar para caixa alta;
- validar os 14 caracteres finais após saneamento;
- exigir DV numérico;
- suportar CNPJ numérico legado;
- suportar CNPJ alfanumérico;
- ter modo estrito quando fizer sentido na linguagem;
- rejeitar caracteres fora da regra oficial.

## Testes Mínimos Obrigatórios

Toda biblioteca do ecossistema deve testar:

- exemplo oficial da Receita `12.ABC.345/01DE-35`;
- ao menos um CNPJ numérico válido;
- ao menos um CNPJ alfanumérico válido;
- DV inválido;
- entrada vazia;
- entrada com tipo inválido, quando aplicável;
- entrada com máscara;
- entrada sem máscara;
- normalização de caixa baixa para alta;
- repetições triviais inválidas.

## Arquivos Recomendados

Quando o repo amadurecer:

- `.github/workflows/ci.yml`
- `examples/`
- `benchmarks/`

## Política de Versão

Recomendação:

- `0.x` enquanto a API do ecossistema ainda estiver estabilizando;
- `1.0.0` apenas quando a semântica principal estiver congelada e testada em produção.

## Política de Release

Cada release deve declarar claramente:

- alterações funcionais;
- correção de bug;
- impacto em compatibilidade;
- novos vetores de teste;
- mudanças de documentação.

## Relação com o Hub

Cada repo derivado deve apontar para o hub `as-cnpj` como origem de:

- manifesto;
- especificação;
- vetores de teste compartilhados;
- diretrizes de governança.

## Checklist de Criação de Novo Repo

1. Criar o repo com naming padrão da família.
2. Publicar README mínimo.
3. Implementar o núcleo do algoritmo sem dependências desnecessárias.
4. Portar os vetores de teste oficiais do ecossistema.
5. Garantir consistência de API com o hub.
6. Publicar primeira versão somente depois de testes automatizados verdes.
