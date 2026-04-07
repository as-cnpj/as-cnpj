# Release Checklist

Idiomas: **Portugues (Brasil)** | [English](release-checklist.en.md) | [Espanol](release-checklist.es.md) | [Francais](release-checklist.fr.md)

Checklist espelhado da biblioteca `as-cnpj-js`.

Ele existe no hub para manter a copia local alinhada com o repositorio publicado.

## Conteudo publico

- README coerente com o estado real do repo.
- Sem texto residual de seed, extracao ou rascunho interno.
- Sem links quebrados para hub, issues, homepage ou repos inexistentes.
- Changelog coerente com o estado da release.
- Metadados do pacote consistentes com o repositorio publicado.

## Validacao tecnica

- `node --check packages/js-reference/src/cnpj.js`
- `node --check packages/js-reference/src/index.js`
- `node --check packages/js-reference/test/cnpj.test.js`
- `node --test --experimental-test-isolation=none packages/js-reference/test/cnpj.test.js`

## Publicacao

- `package.json` com `name`, `version`, `repository`, `bugs`, `homepage` e `publishConfig` corretos.
- Licenca definida.
- Vetores compartilhados presentes.
- API documentada.
- Decisoes principais documentadas.
