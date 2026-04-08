# Contribuindo

Idiomas: **Português (Brasil)** | [English](CONTRIBUTING.en.md) | [Español](CONTRIBUTING.es.md) | [Français](CONTRIBUTING.fr.md)

## Modelo de Manutenção

O ecossistema AS-CNPJ aceita contribuições, mas opera com **curadoria central do maintainer**.

Isso significa:

- PRs externos são bem-vindos;
- a decisão final de merge fica com os maintainers da org;
- nem toda sugestão será incorporada, mesmo quando tecnicamente correta, se divergir da linha de produto ou da estratégia do ecossistema.

## Tipos de Contribuição Aceitos

- correção de bug;
- melhoria de documentação;
- novos vetores de teste;
- melhoria de testes existentes;
- hardening de segurança;
- ajustes de ergonomia sem quebrar o contrato público;
- melhorias de build, CI e governança.

## Tipos de Contribuição que Exigem Alinhamento Prévio

Abra issue ou discussion antes de enviar PR para:

- mudança de API pública;
- mudança de naming;
- mudança do algoritmo;
- mudança de licença;
- novo repositório da família;
- mudança estrutural na governança.

## Regras para PR

- mantenha a mudança focada;
- inclua testes quando houver alteração funcional;
- atualize documentação quando mudar contrato público;
- não copie código de terceiros;
- preserve consistência com manifesto, vetores e contratos do hub.

## Review

- todo PR precisa de review de pelo menos um maintainer listado em `CODEOWNERS`;
- PRs que alteram vetores, governança, segurança ou API pública podem exigir revisão adicional;
- o maintainer pode pedir refactor, divisão do PR ou rejeitar a mudança por razões de coerência do ecossistema.

## Licença e Autoria

Ao enviar contribuições, você concorda que seu código e documentação sejam distribuídos sob a licença do repositório.

No momento, o ecossistema **não usa CLA separado**. O aceite se dá via contribuição voluntária sob a licença do projeto.

## Reportes de Segurança

Não use issue pública para vulnerabilidades.

Siga [SECURITY.md](SECURITY.md).

## Mais informações

- [Documentação de contribuição no site](https://as-cnpj.org/pt/docs?page=contributing)
- [Comunidade e apoiadores](https://as-cnpj.org/pt/community)
