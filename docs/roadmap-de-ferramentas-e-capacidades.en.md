# Tooling and Capability Roadmap

Languages: [Português (Brasil)](roadmap-de-ferramentas-e-capacidades.md) | **English** | [Español](roadmap-de-ferramentas-e-capacidades.es.md) | [Français](roadmap-de-ferramentas-e-capacidades.fr.md)

This document organizes what creates real product value in the AS-CNPJ ecosystem beyond single-item validation.

The goal is to guide the evolution of libraries and the site with focus on practical utility.

## Thesis

Single-item validation solves the core, but it does not solve the whole adoption experience.

The next highest-value capabilities are:

- batch validation;
- batch normalization and formatting;
- public tools on the site;
- migration and homologation utilities.

## What is worth building on the site

### 1. CNPJ validator

Simple public tool:

- receives one CNPJ;
- normalizes it;
- informs whether it is valid;
- shows canonical form;
- shows whether it passes strict mode.

### 2. Batch validator

Tool for pasting multiple lines:

- one input per line;
- one result per line;
- aggregate summary;
- optional CSV export.

Recommendation:

- local browser processing when possible;
- no mandatory upload;
- no persistence by default.

### 3. Valid test example generator

Naming recommendation:

- avoid calling it a "new CNPJ generator";
- prefer **valid test example generator**.

Suggested rules:

- generate only structurally valid examples;
- label clearly as testing;
- optionally cross-check behavior against the official Receita simulator.

### 4. Formatter / normalizer

Simple but useful tool:

- masked or unmasked input;
- normalized output;
- formatted output;
- invalidity indication.

### 5. API playground

Page showing:

- JS call;
- Python call;
- expected result;
- difference between permissive and strict mode.

## What is worth building in the libraries

### Required core

Every library should keep:

- `normalize`
- `isValid`
- `format`
- `assertValid`
- `calculateCheckDigits`

### Recommended second-layer capabilities

#### 1. Batch validation

Strong recommendation for all main languages.

Possible names:

- `validateMany`
- `isValidMany`
- `normalizeMany`
- `formatMany`

Recommended contract:

- preserve input order;
- do not hide errors behind concurrency;
- do not perform IO;
- stay deterministic.

Recommended return format:

```txt
[
  {
    index,
    input,
    normalized,
    formatted,
    valid,
    reason
  }
]
```

#### 2. Aggregate summary

In addition to per-item output, it is worth exposing a simple aggregate:

- total count;
- valid count;
- invalid count;
- most common reasons.

#### 3. Stable error codes

Especially in batch mode, free-form messages do not scale.

Examples:

- `INVALID_TYPE`
- `INVALID_LENGTH`
- `INVALID_ASCII`
- `INVALID_CHECK_DIGIT`
- `TRIVIAL_REPETITION`
- `INVALID_STRICT_FORMAT`

#### 4. Efficient iteration

For backend libraries:

- accept lists;
- later consider iterables or streams;
- keep the core simple before larger abstractions.

## Recommended priority

### High

- simple validator on the site;
- batch validator on the site;
- batch validation in JS;
- batch validation in Python.

### Medium

- valid test example generator;
- public formatter/normalizer;
- stable error codes;
- CSV export on the site.

### Low

- public benchmarks across languages;
- migration SDK;
- advanced stream processing.

## Product recommendation

If the goal is to invest where the community perceives value fastest:

1. simple validator on the site;
2. batch validator on the site;
3. `validateMany` or equivalent in the libraries;
4. valid test example generator.

## Design rule

Every new capability should respect this:

- the core stays small;
- behavior stays predictable;
- the single-item API remains the reference;
- the new layer must not introduce unnecessary dependency into the central algorithm.
