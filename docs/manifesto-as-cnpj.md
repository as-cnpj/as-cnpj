# Manifesto AS-CNPJ

Idiomas: **Português (Brasil)** | [English](manifesto-as-cnpj.en.md) | [Español](manifesto-as-cnpj.es.md) | [Français](manifesto-as-cnpj.fr.md)

## O Que é

**AS-CNPJ** é um ecossistema autoral de bibliotecas para validação, normalização e formatação de CNPJ numérico e alfanumérico.

O projeto nasce de uma premissa simples:

- a mudança do CNPJ em **julho de 2026** exige software sério;
- software sério precisa de implementação auditável, testes fortes e documentação clara;
- isso merece uma família de bibliotecas consistentes, e não soluções improvisadas por linguagem.

## O Que Defendemos

- **Implementação própria** baseada em fonte oficial da Receita Federal.
- **Coerência entre linguagens** sem divergir comportamento sem motivo forte.
- **Núcleo pequeno e auditável** antes de features periféricas.
- **Testes compartilhados** como contrato do ecossistema.
- **Documentação direta** para uso real em produção.
- **Compatibilidade com legado** sem sacrificar rigor.

## O Que Rejeitamos

- copiar código de terceiros;
- portar código linha a linha de outro projeto;
- usar repositórios terceiros como base de publicação;
- heurísticas frágeis baseadas em data;
- regex solta sem validação matemática;
- API inflada para parecer completa;
- dependências desnecessárias no núcleo;
- divergência silenciosa entre bibliotecas da mesma família.

## O Que é Aceitável Usar como Base

- documentação oficial da Receita Federal;
- FAQ oficial;
- simulador oficial para validação cruzada;
- vetores de teste produzidos pelo próprio projeto;
- benchmarks e comparações comportamentais, sem reaproveitar código.

## Tese Técnica

O problema não é apenas "aceitar letra no CNPJ".

O problema real é manter, em múltiplos ecossistemas:

- a mesma regra oficial;
- a mesma normalização;
- os mesmos vetores de teste;
- a mesma previsibilidade de API;
- a mesma segurança contra regressão.

## Tese de Produto

Cada biblioteca da família AS-CNPJ deve ser:

- pequena o bastante para ser auditada;
- clara o bastante para ser adotada;
- estável o bastante para ser usada em sistemas corporativos;
- simples o bastante para ser portada com fidelidade.

## Contrato Mínimo de API

Onde a linguagem permitir, manter um vocabulário parecido:

- `normalize`
- `isValid`
- `format`
- `assertValid`
- `calculateCheckDigits`

O nome exato pode variar, mas o comportamento não deve divergir sem justificativa forte.

## Contrato Mínimo de Qualidade

- sem dependência obrigatória para o algoritmo central, sempre que possível;
- zero IO no núcleo;
- sem heurísticas por data;
- sem assumir que "novo cadastro" implica "CNPJ com letra";
- sem aceitar caracteres fora de `A-Z0-9` nos 12 primeiros caracteres após normalização;
- DV sempre numérico;
- toda regex do núcleo deve ser de tempo linear, sem grupo aninhado com quantificador;
- rejeitar entrada com caracteres fora de ASCII printável antes de processar;
- testes com o exemplo oficial `12.ABC.345/01DE-35`.

## Nossos Compromissos

1. Toda implementação será baseada prioritariamente na documentação oficial da Receita Federal.
2. Toda biblioteca do ecossistema deverá validar CNPJ numérico e alfanumérico.
3. Toda biblioteca do ecossistema deverá ter testes automatizados.
4. Toda biblioteca do ecossistema deverá convergir para o mesmo comportamento funcional.
5. O hub centralizará a especificação, a governança e os vetores de teste.

## Escopo Inicial

Fase 1:

- hub central `as-cnpj`;
- biblioteca `as-cnpj-js`;
- especificação compartilhada;
- vetores de teste comuns;
- padrão de API do ecossistema.

Fase 2:

- `as-cnpj-python`
- `as-cnpj-java`
- `as-cnpj-dotnet`
- `as-cnpj-go`

## Estratégia de Evolução

1. estabilizar a especificação no hub;
2. publicar vetores de teste compartilhados;
3. promover a biblioteca JS atual a repo dedicado;
4. replicar o comportamento nas demais linguagens;
5. comparar todas as bibliotecas da família contra o mesmo suite de testes.

## Regra Final

Se uma escolha tornar o ecossistema mais difícil de auditar, testar, portar ou manter, a escolha está errada.
