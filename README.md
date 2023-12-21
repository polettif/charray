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
```
