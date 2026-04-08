# Política de Segurança

Idiomas: **Português (Brasil)** | [English](SECURITY.en.md) | [Español](SECURITY.es.md) | [Français](SECURITY.fr.md)

## Escopo

Esta política cobre:

- o núcleo de validação de todas as bibliotecas do ecossistema AS-CNPJ;
- os vetores de teste compartilhados;
- scripts de build e extração do hub.

## Como Reportar uma Vulnerabilidade

**Não abra issue pública.**

Canal preferencial:

- **GitHub Security Advisories** no repositório afetado.

Passos:

1. acesse a aba **Security** do repositório;
2. clique em **Report a vulnerability**;
3. descreva o problema com o máximo de detalhe possível.

Canal alternativo:

- **ascnpj@0moura.io**

## O que incluir no report

- descrição clara do problema;
- passos para reproduzir;
- versão afetada (ou commit hash);
- impacto estimado;
- sugestão de correção, se houver.

## Compromisso de resposta

- **Confirmação de recebimento**: até 3 dias úteis.
- **Avaliação inicial**: até 7 dias úteis.
- **Correção ou mitigação publicada**: até 30 dias após confirmação, quando aplicável.

## Divulgação

Seguimos o modelo de **divulgação coordenada**:

- o report permanece privado até a correção ser publicada;
- o reporter será creditado no changelog, salvo pedido de anonimato;
- após a correção, publicaremos um advisory com detalhes técnicos.

## Fora de escopo

- bugs funcionais que não comprometam segurança (use issues normais);
- sugestões de feature;
- problemas em dependências externas ao ecossistema.

## Mais informações

- [Auditoria de segurança completa](AUDIT.md)
- [Documentação de segurança no site](https://as-cnpj.org/pt/docs?page=security-policy)
