# charray
Handle strings (characters) as vectors. Masks `[`, `[<-` and `+`  and is thus not suited for any serious application.

``` r
x = "abcdefg"
x[1]
#> [1] "a"

x[c(2:3,7)]
#> [1] "bcg"

x[1] <- "A"
x[5:6] <- "."
x
#> [1] "Abcd..g"

"combine" + " strings"
#> [1] "combine strings"

# Vectors with length > 1 still work as normal
vec = c("ABC", "x", "Other string")
vec[3]
#> [1] "Other string"
```
