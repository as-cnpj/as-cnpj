# Manifeste AS-CNPJ

Langues : [Português (Brasil)](manifesto-as-cnpj.md) | [English](manifesto-as-cnpj.en.md) | [Español](manifesto-as-cnpj.es.md) | **Français**

AS-CNPJ est un écosystème auteur de bibliothèques pour le CNPJ numérique et alphanumérique.

## Ce qu’il défend

- une implémentation propre fondée sur les sources officielles de la Receita Federal ;
- la cohérence entre langages ;
- des noyaux petits et auditables ;
- des vecteurs de test partagés ;
- une documentation directe pour l’usage en production ;
- la compatibilité avec le legacy sans sacrifier la rigueur.

## Ce qu’il rejette

- copier du code tiers ;
- porter des projets externes ligne par ligne ;
- des heuristiques fragiles basées sur des dates ;
- une validation fondée uniquement sur des regex ;
- des dépendances inutiles dans le noyau.

## Contrat minimal

- valider le CNPJ numérique et alphanumérique ;
- garder une sémantique équivalente pour `normalize`, `isValid`, `format`, `assertValid` et `calculateCheckDigits` ;
- rejeter les caractères hors ASCII imprimable avant traitement ;
- garder des regex en temps linéaire ;
- toujours tester l’exemple officiel `12.ABC.345/01DE-35`.

