# Decisions

Languages: [Portugues (Brasil)](decisoes.md) | **English** | [Espanol](decisoes.es.md) | [Francais](decisoes.fr.md)

## 1. Pure JavaScript with ESM

Reason:

- small core;
- zero dependencies;
- good portability;
- easy auditing.

## 2. Short API with generic and explicit aliases

Reason:

- `normalize`, `isValid`, and `format` improve ergonomics;
- names with `CNPJ` reduce ambiguity in larger codebases.

## 3. Optional strict mode

Reason:

- many flows receive masked data, unmasked data, or noisy input;
- permissive mode helps integration;
- strict mode helps more rigid contracts.

## 4. Shared vectors in the hub

Reason:

- the JS library does not become the exclusive owner of the truth;
- other ports can prove conformance against the same set.

## 5. Reject trivial repetitions

Reason:

- avoids common false positives found in simplistic validators.
