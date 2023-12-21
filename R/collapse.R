#' Wrap paste() with collapse argument
#'
#' @param vec string vector
#' @param sep separator
#'
#' @return string with length 1
#' @export
#'
#' @examples
#' collapse(c("a", "b", "c"), "-")
collapse = function(vec, sep = "") {
    stopifnot(length(sep) == 1)
    paste(vec, collapse = sep)
}
