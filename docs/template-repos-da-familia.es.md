# Template de Repositorios de la Familia

Idiomas: [Português (Brasil)](template-repos-da-familia.md) | [English](template-repos-da-familia.en.md) | **Español** | [Français](template-repos-da-familia.fr.md)

Todo repositorio del ecosistema debe contener como mínimo:

- `README.md`
- `LICENSE`
- `CHANGELOG.md`
- `SECURITY.md`
- `CONTRIBUTING.md`
- `docs/`
- `src/`
- `test/`

Comportamiento mínimo:

- soportar CNPJ numérico y alfanumérico;
- aceptar entradas con y sin máscara;
- mantener los dígitos verificadores numéricos;
- ofrecer modo estricto cuando corresponda;
- rechazar caracteres inválidos.

Pruebas mínimas:

- ejemplo oficial de la Receita;
- caso numérico válido;
- caso alfanumérico válido;
- dígito verificador inválido;
- entrada vacía;
- tipo inválido cuando corresponda;
- normalización de minúsculas;
- repeticiones triviales.

