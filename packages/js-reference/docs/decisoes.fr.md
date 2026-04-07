# Decisions

Langues: [Portugues (Brasil)](decisoes.md) | [English](decisoes.en.md) | [Espanol](decisoes.es.md) | **Francais**

## 1. JavaScript pur avec ESM

Motif:

- noyau petit;
- zero dependance;
- bonne portabilite;
- audit facile.

## 2. API courte avec aliases generiques et explicites

Motif:

- `normalize`, `isValid` et `format` ameliorent l'ergonomie;
- les noms avec `CNPJ` reduisent l'ambiguite dans les bases plus grandes.

## 3. Mode strict optionnel

Motif:

- de nombreux flux recoivent des donnees masquees, non masquees ou bruitees;
- le mode permissif aide l'integration;
- le mode strict aide les contrats plus rigides.

## 4. Vecteurs partages dans le hub

Motif:

- la bibliotheque JS ne devient pas la proprietaire exclusive de la verite;
- les autres ports peuvent prouver leur conformite avec le meme ensemble.

## 5. Rejet des repetitions triviales

Motif:

- evite les faux positifs frequents dans les validateurs simplistes.
