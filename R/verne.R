#' Data frame de plusieurs livres de Jules Verne.
#'
#' Retourne un data frame de 2 colonnes: \code{text} qui contient le texte du livre
#' (environ 70 caractères par ligne), et \code{book} qui contient le titre
#' du livre correspondant. Les titres du livre sont de type \code{factor}.
#'
#' @details Les textes sont issus du Projet Gutenberg (\url{http://www.gutenberg.org/})
#' et modifiés pour ne pas inclure les informations de license. Les lignes vides ont
#' également été retirées.
#'
#' @return Un data frame de 2 colonnes: \code{text}: une ligne de texte, \code{book}:
#' le titre du livre correspondant.
#'
#' @name verne
#'
#' @examples
#'
#' library(dplyr)
#'
#' verne() %>%
#'   group_by(book) %>%
#'   summarise(total_lines = n())
#'
#' @export

verne <- function() {
  books <- list(
    "L'archipel en feu" = julesverne::archipelenfeu,
    "Autour de la lune" = julesverne::autourdelalune,
    "Cinq semaines en ballon" = julesverne::cinqsemaines,
    "Le tour du monde en 80 jours" = julesverne::tourdumonde,
    "Vingt mille lieues sous les mers 1" = julesverne::souslesmers1,
    "Vingt mille lieues sous les mers 2" = julesverne::souslesmers2,
    "Voyage au centre de la terre" = julesverne::voyageterre
  )

  output <- data.frame(text = unlist(books, use.names = FALSE), stringsAsFactors = FALSE)
  output$book <- factor(rep(names(books), sapply(books, length)))
  output$book <- factor(output$book, levels = unique(output$book))
  structure(output, class = c("tbl_df", "tbl", "data.frame"))
}
