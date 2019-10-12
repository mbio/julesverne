library(readr)
library(devtools)

# Lire les données des livres depuis Project Gutenberg
# Retirer les informations d'entête et de pied de page
# Ajouter les données au package

archipelenfeu <- read_lines("http://www.gutenberg.org/cache/epub/17660/pg17660.txt", skip = 32, na = "")
archipelenfeu <- archipelenfeu[1:(length(archipelenfeu) - 386)]
archipelenfeu <- archipelenfeu[!is.na(archipelenfeu)]
usethis::use_data(archipelenfeu, overwrite = TRUE)

autourdelalune <- read_lines("http://www.gutenberg.org/files/46111/46111-0.txt", skip = 96, na = "")
autourdelalune <- autourdelalune[1:(length(autourdelalune) - 366)]
autourdelalune <- autourdelalune[!is.na(autourdelalune)]
usethis::use_data(autourdelalune, overwrite = TRUE)

cinqsemaines <- read_lines("http://www.gutenberg.org/cache/epub/4548/pg4548.txt", skip = 35, na = "")
cinqsemaines <- cinqsemaines[1:(length(cinqsemaines) - 364)]
cinqsemaines <- cinqsemaines[!is.na(cinqsemaines)]
usethis::use_data(cinqsemaines, overwrite = TRUE)

tourdumonde <- read_lines("http://www.gutenberg.org/cache/epub/800/pg800.txt", skip = 29, na = "")
tourdumonde <- tourdumonde[1:(length(tourdumonde) - 367)]
tourdumonde <- tourdumonde[!is.na(tourdumonde)]
usethis::use_data(tourdumonde, overwrite = TRUE)

souslesmers1 <- read_lines("http://www.gutenberg.org/cache/epub/5095/pg5095.txt", skip = 101, na = "")
souslesmers1 <- souslesmers1[1:(length(souslesmers1) - 369)]
souslesmers1 <- souslesmers1[!is.na(souslesmers1)]
usethis::use_data(souslesmers1, overwrite = TRUE)

souslesmers2 <- read_lines("http://www.gutenberg.org/cache/epub/5096/pg5096.txt", skip = 99, na = "")
souslesmers2 <- souslesmers2[1:(length(souslesmers2) - 369)]
souslesmers2 <- souslesmers2[!is.na(souslesmers2)]
usethis::use_data(souslesmers2, overwrite = TRUE)

voyageterre <- read_lines("http://www.gutenberg.org/cache/epub/4791/pg4791.txt", skip = 63, na = "")
voyageterre <- voyageterre[1:(length(voyageterre) - 371)]
voyageterre <- voyageterre[!is.na(voyageterre)]
usethis::use_data(voyageterre, overwrite = TRUE)

