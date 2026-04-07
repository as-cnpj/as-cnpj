# Security Audit

Languages: [Português (Brasil)](AUDIT.md) | **English** | [Español](AUDIT.es.md) | [Français](AUDIT.fr.md)

Last updated: **2026-04-07**

This document summarizes the security posture and audit results of the AS-CNPJ ecosystem, with a primary focus on the JavaScript library (`@ascnpj/core`).

## Summary

- pure computation library;
- zero runtime dependencies;
- zero network, filesystem, or environment access at runtime;
- linear-time regex patterns;
- input guards for type, size, ASCII range, and trivial repetitions;
- CI prepared for syntax checks, tests, and npm package-content verification.

## Main protections

- type guards in public functions;
- maximum input length enforcement;
- ASCII printable guard before processing;
- rejection of trivial repeated values;
- no lifecycle scripts in the npm package;
- `.env` and `.npmrc` ignored by Git.

## Supply chain notes

- CI is part of the recommended publication gate;
- npm 2FA remains a maintainer responsibility;
- provenance-based publication is recommended for release automation.

## Full reference

For the complete audit in the base language of the project, see [AUDIT.md](AUDIT.md).
