# Manifesto AS-CNPJ

Idiomas: **Português (Brasil)** | [English](manifesto-as-cnpj.en.md) | [Español](manifesto-as-cnpj.es.md) | [Français](manifesto-as-cnpj.fr.md)

## O que e

**AS-CNPJ** e um ecossistema autoral de bibliotecas para validacao, normalizacao e formatacao de CNPJ numerico e alfanumerico.

O projeto nasce de uma premissa simples:

- a mudanca do CNPJ em **julho de 2026** exige software serio;
- software serio precisa de implementacao auditavel, testes fortes e documentacao clara;
- isso merece uma familia de bibliotecas consistentes, e nao solucoes improvisadas por linguagem.

## O que defendemos

- **Implementacao propria** baseada em fonte oficial da Receita Federal.
- **Coerencia entre linguagens** sem divergir comportamento sem motivo forte.
- **Nucleo pequeno e auditavel** antes de features perifericas.
- **Testes compartilhados** como contrato do ecossistema.
- **Documentacao direta** para uso real em producao.
- **Compatibilidade com legado** sem sacrificar rigor.

## O que rejeitamos

- copiar codigo de terceiros;
- portar codigo linha a linha de outro projeto;
- usar repositorios terceiros como base de publicacao;
- heuristicas frageis baseadas em data;
- regex solta sem validacao matematica;
- API inflada para parecer completa;
- dependencias desnecessarias no nucleo;
- divergencia silenciosa entre bibliotecas da mesma familia.

## O que e aceitavel usar como base

- documentacao oficial da Receita Federal;
- FAQ oficial;
- simulador oficial para validacao cruzada;
- vetores de teste produzidos pelo proprio projeto;
- benchmarks e comparacoes comportamentais, sem reaproveitar codigo.

## Tese tecnica

O problema nao e apenas "aceitar letra no CNPJ".

O problema real e manter, em multiplos ecossistemas:

- a mesma regra oficial;
- a mesma normalizacao;
- os mesmos vetores de teste;
- a mesma previsibilidade de API;
- a mesma seguranca contra regressao.

## Tese de produto

Cada biblioteca da familia AS-CNPJ deve ser:

- pequena o bastante para ser auditada;
- clara o bastante para ser adotada;
- estavel o bastante para ser usada em sistemas corporativos;
- simples o bastante para ser portada com fidelidade.

## Contrato minimo de API

Onde a linguagem permitir, manter um vocabulario parecido:

- `normalize`
- `isValid`
- `format`
- `assertValid`
- `calculateCheckDigits`

O nome exato pode variar, mas o comportamento nao deve divergir sem justificativa forte.

## Contrato minimo de qualidade

- sem dependencia obrigatoria para o algoritmo central, sempre que possivel;
- zero IO no nucleo;
- sem heuristicas por data;
- sem assumir que "novo cadastro" implica "CNPJ com letra";
- sem aceitar caracteres fora de `A-Z0-9` nos 12 primeiros caracteres apos normalizacao;
- DV sempre numerico;
- toda regex do nucleo deve ser de tempo linear, sem grupo aninhado com quantificador;
- rejeitar entrada com caracteres fora de ASCII printavel antes de processar;
- testes com o exemplo oficial `12.ABC.345/01DE-35`.

## Nossos compromissos

1. Toda implementacao sera baseada prioritariamente na documentacao oficial da Receita Federal.
2. Toda biblioteca do ecossistema devera validar CNPJ numerico e alfanumerico.
3. Toda biblioteca do ecossistema devera ter testes automatizados.
4. Toda biblioteca do ecossistema devera convergir para o mesmo comportamento funcional.
5. O hub centralizara a especificacao, a governanca e os vetores de teste.

## Escopo inicial

Fase 1:

- hub central `as-cnpj`;
- biblioteca `as-cnpj-js`;
- especificacao compartilhada;
- vetores de teste comuns;
- padrao de API do ecossistema.

Fase 2:

- `as-cnpj-python`
- `as-cnpj-java`
- `as-cnpj-dotnet`
- `as-cnpj-go`

## Estrategia de evolucao

1. estabilizar a especificacao no hub;
2. publicar vetores de teste compartilhados;
3. promover a biblioteca JS atual a repo dedicado;
4. replicar o comportamento nas demais linguagens;
5. comparar todas as bibliotecas da familia contra o mesmo suite de testes.

## Regra final

Se uma escolha tornar o ecossistema mais dificil de auditar, testar, portar ou manter, a escolha esta errada.
