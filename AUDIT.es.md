# Auditoria de Seguridad

Idiomas: [Português (Brasil)](AUDIT.md) | [English](AUDIT.en.md) | **Español** | [Français](AUDIT.fr.md)

Última actualización: **2026-04-07**

Este documento resume la postura de seguridad y los resultados de auditoría del ecosistema AS-CNPJ, con foco principal en la biblioteca JavaScript (`@ascnpj/core`).

## Resumen

- biblioteca de computación pura;
- cero dependencias de runtime;
- cero acceso a red, filesystem o variables de entorno en runtime;
- regex de tiempo lineal;
- guards de entrada para tipo, tamaño, rango ASCII y repeticiones triviales;
- CI preparada para sintaxis, pruebas y verificación del contenido del paquete npm.

## Protecciones principales

- type guards en funciones públicas;
- límite máximo de tamaño de entrada;
- guard ASCII printable antes del procesamiento;
- rechazo de repeticiones triviales;
- sin scripts de lifecycle en el paquete npm;
- `.env` y `.npmrc` ignorados por Git.

## Notas de supply chain

- CI forma parte del gate recomendado de publicación;
- 2FA en npm sigue siendo responsabilidad del maintainer;
- se recomienda publication con provenance en la automatización de release.

## Referencia completa

Para la auditoría completa en el idioma base del proyecto, consulta [AUDIT.md](AUDIT.md).
