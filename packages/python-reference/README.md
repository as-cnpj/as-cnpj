<div align="center">
  <img src="assets/brand/as-cnpj-logo-light.svg" alt="AS-CNPJ Python Reference" width="860" />
</div>

# AS-CNPJ Python Reference

Idiomas: **Português (Brasil)** | [English](README.en.md) | [Español](README.es.md) | [Français](README.fr.md)

Esta pasta é a semente local da biblioteca Python do ecossistema AS-CNPJ dentro do hub.

Repositório público:

- `https://github.com/as-cnpj/as-cnpj-python`

## Comece por aqui

- [README público do as-cnpj-python](../../exports/as-cnpj-python/README.md)
- [API local](docs/api.md)
- [Estratégia de testes](test/README.md)
- [Checklist de release](docs/release-checklist.md)
- [Política de segurança](SECURITY.md)
- [Hub do ecossistema AS-CNPJ](../../README.md)

## Papel desta pasta dentro do hub

- manter uma semente local enquanto o contrato do ecossistema evolui;
- facilitar comparação com vetores compartilhados do hub;
- permitir ajustes sincronizados entre o hub e o repo derivado;
- servir como base controlada para futuras extrações ou reorganizações.

## O que esta referência cobre

- validação de CNPJ legado numérico;
- validação de CNPJ alfanumérico;
- normalização;
- formatação;
- cálculo de dígitos verificadores;
- suporte a modo permissivo e modo estrito.

## API pública espelhada

- `normalize(value)`
- `is_valid(value, strict=False)`
- `format(value, strict=False)`
- `assert_valid(value, strict=False)`
- `calculate_check_digits(base12)`
- `normalize_cnpj(value)`
- `is_valid_cnpj(value, strict=False)`
- `format_cnpj(value, strict=False)`
- `assert_valid_cnpj(value, strict=False)`
- `calculate_cnpj_check_digits(base12)`

## Exemplo rápido

```python
from as_cnpj import format_cnpj, is_valid, normalize

is_valid("12.ABC.345/01DE-35")
normalize("12.abc.345/01de-35")
format_cnpj("12ABC34501DE35")
```

## Testes

```bash
python -m unittest discover -s test -p "test_*.py"
```

CI planejada para o repo derivado:

- `Python 3.10`
- `Python 3.11`
- `Python 3.12`
- `Python 3.13`
- `Python 3.14`

## Publicação

- pacote planejado no PyPI: `as-cnpj`
- import package: `as_cnpj`
- status atual: repositório público ativo, ainda sem publicação no PyPI
