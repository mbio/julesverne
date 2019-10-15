# Un package R pour les livres de Jules Verne

Ce package contient quelques livres de Jules Verne tels que distribués sur le (http://www.gutenberg.org/ebooks/author/60)[Projet Gutenberg]. Les livres sont encodés en UTF-8, préformattés et préparés pour des exercices de text mining utilisant la langue française. La structure est un `data frame` de 2 colonnes: 

- `text`: le texte du livre (une ligne contient environ 70 caractères),
- `book`: le titre du livre correspondant (de type `factor`).

Les livres actuellement disponibles dans le package sont :

- `archipelenfeu`: L'archipel en feu (1884)
- `autourdelalune`: Autour de la lune (1869)
- `cinqsemaines`: Cinq semaines en ballon (1863)
- `tourdumonde`: Le tour du monde en 80 jours (1872)
- `souslesmers1`: Vingt-mille lieues sous les mers - première partie (1869)
- `souslesmers2`: Vingt-mille lieues sous les mers - deuxième partie (1870)
- `voyageterre`: Voyage au centre de la terre (1864)

## Installation

Vous pouvez installer le package à partir de Github:

```
library(devtools)
install_github("mbio/julesverne")
library(julesverne)
```

## Utilisation

La fonction principale du package retourne un `data frame` de 2 colonnes contenant l'ensemble des livres disponibles.

```
verne()
```

La commande suivante permet d'afficher le nombre de lignes disponibles pour chaque livre:

```
library(dplyr)
verne() %>%
  group_by(book) %>%
  summarise(nb_lignes = n())
```

On peut afficher la liste des livres disponibles comme suit:

```
levels(verne()$book)
```

Pour le contenu d'un livre en particulier, par exemple `Cinq semaines en ballon`, entrez simplement `cinqsemaines` (le nom de la variable). Ou assignez-la à une autre variable: `livre1 <- cinqsemaines`. Le format retourné est une liste de caractères.

Pour une description de chaque livre, utilisez `?archipelenfeu` ou l'équivalent pour les autres titres. Utilisez `?verne` pour la description de la fonction.
