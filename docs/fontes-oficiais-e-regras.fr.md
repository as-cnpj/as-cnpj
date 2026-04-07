# Sources Officielles et Règles

Langues : [Português (Brasil)](fontes-oficiais-e-regras.md) | [English](fontes-oficiais-e-regras.en.md) | [Español](fontes-oficiais-e-regras.es.md) | **Français**

## Sources officielles

- annonce de la Receita Federal sur la transition vers le CNPJ alphanumérique ;
- page technique de calcul des chiffres de contrôle ;
- FAQ officielle en PDF ;
- simulateur officiel de CNPJ alphanumérique.

## Règles confirmées

- échéance : juillet 2026 ;
- la longueur totale reste de 14 caractères ;
- les 12 premiers caractères acceptent `A-Z0-9` ;
- les 2 derniers caractères restent numériques ;
- les chiffres de contrôle utilisent toujours le modulo 11 ;
- la conversion des caractères utilise `ASCII - 48` ;
- les CNPJ actuels restent valides ;
- les formats numérique et alphanumérique coexistent.

## Implications pratiques

- stocker le CNPJ comme texte, pas comme type numérique ;
- normaliser en majuscules ;
- supporter les entrées avec ou sans masque ;
- ne pas séparer la logique entre “ancien CNPJ” et “nouveau CNPJ” quand la vraie différence est la conversion des caractères.

