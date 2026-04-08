# Feuille de Route des Dépôts

Langues : [Português (Brasil)](roadmap-dos-repositorios.md) | [English](roadmap-dos-repositorios.en.md) | [Español](roadmap-dos-repositorios.es.md) | **Français**

## Objectif

Définir l’ordre de maturation et le périmètre de chaque dépôt de l’organisation `as-cnpj`.

## Phase actuelle

L’organisation existe déjà :

- https://github.com/as-cnpj

Les runtimes publics déjà disponibles sont :

- https://github.com/as-cnpj/as-cnpj-js
- https://github.com/as-cnpj/as-cnpj-python

Le focus est maintenant de :

- garder le hub comme source de vérité de l’écosystème ;
- faire mûrir `as-cnpj-js` après la publication initiale sur npm ;
- faire mûrir `as-cnpj-python` avant la publication initiale sur PyPI ;
- répliquer le même contrat technique dans les futurs langages.

## Séquence recommandée

### 1. `as-cnpj`

Périmètre :

- manifeste ;
- sources officielles ;
- spécification ;
- vecteurs de test ;
- gouvernance ;
- roadmap ;
- templates.

### 2. `as-cnpj-js`

État actuel :

- dépôt public ;
- paquet npm déjà publié.

### 3. `as-cnpj-python`

État actuel :

- dépôt public ;
- la prochaine étape naturelle est la publication sur PyPI.

### 4. `as-cnpj-java`

Périmètre :

- focus backend corporate ;
- API claire pour les intégrations ;
- bonne couverture de l’algorithme et du formatage.

### 5. `as-cnpj-dotnet`

Périmètre :

- focus sur .NET moderne ;
- bonne sémantique d’API pour services et applications d’entreprise.

### 6. `as-cnpj-go`

Périmètre :

- focus sur la simplicité, le faible overhead et l’ergonomie du package.

## Règle

Ne pas ouvrir plusieurs dépôts vides en même temps.

Ouvrir un dépôt, le stabiliser, le documenter, le publier, puis seulement passer au suivant.
