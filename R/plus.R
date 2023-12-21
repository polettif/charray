#' Mask base + to paste strings
#'
#' @param e1 first string vector
#' @param e2 second string vector
#'
#' @export
`+` = function(e1, e2) {
    if(is.character(e1) && is.character(e2)) {
        return(paste0(e1, e2))
    }
    .Primitive("+")(e1, e2)
}
