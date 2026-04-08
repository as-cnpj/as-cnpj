# Feuille de Route des Dépôts

Langues : [Português (Brasil)](roadmap-dos-repositorios.md) | [English](roadmap-dos-repositorios.en.md) | [Español](roadmap-dos-repositorios.es.md) | **Français**

## Objectif

Définir l'ordre de maturation et le périmètre de chaque dépôt de l'org `as-cnpj`.

## Phase actuelle

L'organisation existe déjà :

- https://github.com/as-cnpj

Le premier dépôt dérivé existe déjà lui aussi :

- https://github.com/as-cnpj/as-cnpj-js

Le focus actuel est :

- consolider le hub comme source de vérité de l'écosystème ;
- faire mûrir `as-cnpj-js` après la publication initiale du package ;
- préparer `as-cnpj-python` comme prochain dépôt dérivé ;
- répliquer le contrat technique dans les prochains langages.

## Séquence recommandée

### 1. `as-cnpj`

Périmètre :

- manifeste ;
- sources officielles ;
- spécification ;
- vecteurs de test ;
- gouvernance ;
- feuille de route ;
- templates.

Résultat attendu :

- devenir la page principale de l'org ;
- expliquer le problème, la vision et l'architecture de l'écosystème.

### 2. `as-cnpj-js`

État actuel :

- dépôt publié sur `https://github.com/as-cnpj/as-cnpj-js`
- package npm publié comme `@ascnpj/core`

Périmètre de cette phase :

- stabiliser l'API publique initiale ;
- maintenir les tests automatisés ;
- durcir la CI, la gouvernance et le processus de release ;
- maintenir une publication sécurisée du package.

Résultat attendu :

- fixer le premier contrat idiomatique de l'écosystème ;
- servir de base de comparaison pour les autres ports ;
- conserver un rythme de releases stable pour le package.

### 3. `as-cnpj-python`

État actuel :

- graine locale créée dans `packages/python-reference`

Périmètre :

- port fidèle du contrat fonctionnel ;
- API idiomatique en Python ;
- tests reflétant les vecteurs du hub ;
- structure prête pour dépôt avec CI et gouvernance.

Résultat attendu :

- ouvrir le repo `as-cnpj-python` déjà avec noyau, tests, CI et README solides ;
- préserver l'équivalence fonctionnelle avec `as-cnpj-js` sans copier l'implémentation.

### 4. `as-cnpj-java`

Périmètre :

- focus entreprise ;
- API claire pour l'intégration backend ;
- couverture forte de l'algorithme et du formatage.

### 5. `as-cnpj-dotnet`

Périmètre :

- focus sur .NET moderne ;
- bonne sémantique pour services et apps d'entreprise.

### 6. `as-cnpj-go`

Périmètre :

- focus sur la simplicité, le faible overhead et l'ergonomie du package.

## Critère pour ouvrir un nouveau dépôt

Ouvrir un nouveau dépôt seulement lorsqu'il y a :

- une spécification suffisante dans le hub ;
- le template de dépôt appliqué ;
- des vecteurs de test prêts ;
- le périmètre du langage défini ;
- une disponibilité réelle pour maintenir le dépôt après sa création.

## Critère pour publier un package

Publier un package seulement lorsqu'il y a :

- un README solide ;
- des tests automatisés au vert ;
- un changelog initial ;
- une licence définie ;
- une API minimale stabilisée ;
- des exemples d'usage.

## Règle opérationnelle

Ne pas ouvrir plusieurs dépôts vides en même temps.

Ouvrir un dépôt, le stabiliser, le documenter, le publier, et seulement ensuite passer au suivant.
