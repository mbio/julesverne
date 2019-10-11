library(readr)
library(devtools)

# Lire les données des livres depuis Project Gutenberg
# Retirer les informations d'entête et de pied de page
# Ajouter les données au package

archipel <- read_lines("http://www.gutenberg.org/cache/epub/17660/pg17660.txt", skip = 32)
archipel <- archipel[1:(length(archipel) - 386)]
archipel <- archipel[!is.na(archipel)]
usethis::use_data(archipel, overwrite = TRUE)

lune <- read_lines("http://www.gutenberg.org/files/46111/46111-0.txt", skip = 96)
lune <- lune[1:(length(lune) - 366)]
lune <- lune[!is.na(lune)]
usethis::use_data(lune, overwrite = TRUE)
