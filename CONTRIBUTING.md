# Contribuindo

Idiomas: **Português (Brasil)** | [English](CONTRIBUTING.en.md) | [Español](CONTRIBUTING.es.md) | [Français](CONTRIBUTING.fr.md)

## Modelo de manutencao

O ecossistema AS-CNPJ aceita contribuicoes, mas opera com **curadoria central do maintainer**.

Isso significa:

- PRs externos sao bem-vindos;
- a decisao final de merge fica com os maintainers da org;
- nem toda sugestao sera incorporada, mesmo quando tecnicamente correta, se divergir da linha de produto ou da estrategia do ecossistema.

## Tipos de contribuicao aceitos

- correcao de bug;
- melhoria de documentacao;
- novos vetores de teste;
- melhoria de testes existentes;
- hardening de seguranca;
- ajustes de ergonomia sem quebrar o contrato publico;
- melhorias de build, CI e governanca.

## Tipos de contribuicao que exigem alinhamento previo

Abra issue ou discussion antes de enviar PR para:

- mudanca de API publica;
- mudanca de naming;
- mudanca do algoritmo;
- mudanca de licenca;
- novo repositorio da familia;
- mudanca estrutural na governanca.

## Regras para PR

- mantenha a mudanca focada;
- inclua testes quando houver alteracao funcional;
- atualize documentacao quando mudar contrato publico;
- nao copie codigo de terceiros;
- preserve consistencia com manifesto, vetores e contratos do hub.

## Review

- todo PR precisa de review de pelo menos um maintainer listado em `CODEOWNERS`;
- PRs que alteram vetores, governanca, seguranca ou API publica podem exigir revisao adicional;
- o maintainer pode pedir refactor, divisao do PR ou rejeitar a mudanca por razoes de coerencia do ecossistema.

## Licenca e autoria

Ao enviar contribuicoes, voce concorda que seu codigo e documentacao sejam distribuidos sob a licenca do repositorio.

No momento, o ecossistema **nao usa CLA separado**. O aceite se da via contribuicao voluntaria sob a licenca do projeto.

## Reportes de seguranca

Nao use issue publica para vulnerabilidades.

Siga [SECURITY.md](SECURITY.md).
