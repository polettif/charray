test_that("[...]", {
    expect_identical("abc"[1:2], "ab")

    abc = paste(letters, collapse = "")
    expect_identical(abc[c(12, 20, 20)], "ltt")
    expect_identical(letters[c(12, 20, 20)], c("l", "t", "t"))
})

test_that("data.frame[]", {
    expect_s3_class(mtcars[1, ], "data.frame")
})

test_that("[<-", {
    x = "abcdefgh"
    x[2:3] <- c("B", "C")
    x[4:5] <- "."
    expect_identical(x, "aBC..fgh")
    expect_error({
        x[1:2] <- "XYZ"
    },
    "Number of characters is not equal to number of replacement indices")
    x[1:2] <- "XY"
    expect_identical(x, "XYC..fgh")
    expect_error({
        x[1:3] <- as.character(1:2)
    }, "length of i and value are not equal")

    y = c(204, 6502, 57)
    y[1] <- 0
    expect_identical(y, c(0, 6502, 57))
})
