#' Mask `[` to allow character subsetting
#'
#' See [base::`[`()]
#'
#' @param x object
#' @param ... indices to subset
#' @usage x[...]
#' @export
`[` = function(x, ...) {
    if(is.character(x) && length(x) == 1) {
        dots = list(...)
        if(length(dots) == 1) {
            x_split = strsplit(x, "")[[1]]
            index = unlist(dots)
            index <- index[index >= 1]
            index <- index[index <= length(x_split)]

            x_vec = x_split[index]

            return(paste(x_vec, collapse = ""))
        }
    }
    .Primitive("[")(x, ...)
}

#' Mask `[<-` to allow character assignment
#' See [base::`[<-`()]
#' @param x object
#' @param i index
#' @param ... ignored / passed on
#' @param value value to assign
#' @export
`[<-` = function(x, i, ..., value) {
    if(is.character(x) && length(x) == 1) {
        if(length(value) == 1 && nchar(value) > 1) {
            if(nchar(value) != length(i)) {
                stop("Number of characters is not equal to number of replacement indices")
            }
            value <- strsplit(value, "")[[1]]
        }

        x_split = strsplit(x, "")[[1]]
        index = i
        index <- index[index >= 1]
        index <- index[index <= length(x_split)]
        if(!(length(index) == length(value) || length(value) == 1)) {
            stop("length of i and value are not equal")
        }

        x_split[index] <- value
        return(paste(x_split, collapse = ""))
    }
    .Primitive("[<-")(x, i, ..., value)
}
