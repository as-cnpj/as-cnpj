# AS-CNPJ JS Reference

Idiomas: [Português (Brasil)](README.md) | [English](README.en.md) | **Español** | [Français](README.fr.md)

Esta carpeta es la copia de trabajo de la biblioteca JavaScript/TypeScript del ecosistema AS-CNPJ dentro del hub.

El repositorio público dedicado es:

- `https://github.com/as-cnpj/as-cnpj-js`

## Empieza por aquí

- [API local](docs/api.md)
- [Estrategia de pruebas](test/README.md)
- [Checklist de release](docs/release-checklist.md)
- [Política de seguridad](SECURITY.md)
- [README público de as-cnpj-js](../../exports/as-cnpj-js/README.md)

## Papel de esta carpeta dentro del hub

Existe para:

- mantener una semilla local durante la evolución del ecosistema;
- facilitar la comparación con los vectores compartidos del hub;
- servir de base mientras madura el flujo entre el hub y los repositorios derivados.

## API pública espejada

Funciones principales:

- `normalize(value)`
- `isValid(value, options?)`
- `format(value, options?)`
- `assertValid(value, options?)`
- `calculateCheckDigits(base12)`

Aliases explícitos:

- `normalizeCNPJ(value)`
- `isValidCNPJ(value, options?)`
- `formatCNPJ(value, options?)`
- `assertValidCNPJ(value, options?)`
- `calculateCNPJCheckDigits(base12)`

## Pruebas

```bash
node packages/js-reference/test/run.js
```

## Referencia pública

Para uso público, README, issues y evolución de la biblioteca, usa el repositorio dedicado:

- `https://github.com/as-cnpj/as-cnpj-js`

## Publicación

- paquete npm: [`@ascnpj/core`](https://www.npmjs.com/package/@ascnpj/core)
- workflow de release ubicado en `.github/workflows/release.yml`
- Trusted Publishing vía GitHub Actions
