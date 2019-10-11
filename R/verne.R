#' Tidy data frame of Jane Austen's 6 completed, published novels
#'
#' Returns a tidy data frame of Jane Austen's 6 completed, published novels with
#' two columns: \code{text}, which contains the text of the novels divided into
#' elements of up to about 70 characters each, and \code{book}, which contains the titles of
#' the novels as a factor in order of publication.
#'
#' @details Users should be aware that there are some differences in usage
#' between the novels as made available by Project Gutenberg. For example,
#' "anything" vs. "any thing", "Mr" vs. "Mr.", and using underscores vs. all
#' caps to indicate italics/emphasis.
#'
#' @return A data frame with two columns: \code{text} and \code{book}
#'
#' @name austen_books
#'
#' @examples
#'
#' library(dplyr)
#'
#' austen_books() %>% group_by(book) %>%
#'      summarise(total_lines = n())
#'
#' @export

verne <- function() {
  books <- list(
    "L'archipel en feu" = julesverne::archipel,
    "Autour de la lune" = julesverne::lune
  )

  output <- data.frame(text = unlist(books, use.names = FALSE), stringsAsFactors = FALSE)
  output$book <- factor(rep(names(books), sapply(books, length)))
  output$book <- factor(output$book, levels = unique(output$book))
  structure(output, class = c("tbl_df", "tbl", "data.frame"))
}
