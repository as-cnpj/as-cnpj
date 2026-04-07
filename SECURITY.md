# Politica de Seguranca

Idiomas: **Português (Brasil)** | [English](SECURITY.en.md) | [Español](SECURITY.es.md) | [Français](SECURITY.fr.md)

## Escopo

Esta politica cobre:

- o nucleo de validacao de todas as bibliotecas do ecossistema AS-CNPJ;
- os vetores de teste compartilhados;
- scripts de build e extracao do hub.

## Como reportar uma vulnerabilidade

**Nao abra issue publica.**

Canal preferencial:

- **GitHub Security Advisories** no repositorio afetado.

Passos:

1. acesse a aba **Security** do repositorio;
2. clique em **Report a vulnerability**;
3. descreva o problema com o maximo de detalhe possivel.

Canal alternativo:

- **ascnpj@0moura.io**

## O que incluir no report

- descricao clara do problema;
- passos para reproduzir;
- versao afetada (ou commit hash);
- impacto estimado;
- sugestao de correcao, se houver.

## Compromisso de resposta

- **Confirmacao de recebimento**: ate 3 dias uteis.
- **Avaliacao inicial**: ate 7 dias uteis.
- **Correcao ou mitigacao publicada**: ate 30 dias apos confirmacao, quando aplicavel.

## Divulgacao

Seguimos o modelo de **divulgacao coordenada**:

- o report permanece privado ate a correcao ser publicada;
- o reporter sera creditado no changelog, salvo pedido de anonimato;
- apos a correcao, publicaremos um advisory com detalhes tecnicos.

## Fora de escopo

- bugs funcionais que nao comprometam seguranca (use issues normais);
- sugestoes de feature;
- problemas em dependencias externas ao ecossistema.
