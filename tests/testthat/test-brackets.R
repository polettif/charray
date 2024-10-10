test_that("[...]", {
    expect_equal("abc"[1:2], "ab")

    abc = paste(letters, collapse = "")
    expect_equal(abc[c(12,20,20)], "ltt")
    expect_equal(letters[c(12,20,20)], c("l", "t", "t"))
})

test_that("data.frame[]", {
    expect_equal(class(mtcars[1,]), "data.frame")
})

test_that("[<-", {
    x = "abcdefgh"
    x[2:3] <- c("B", "C")
    x[4:5] <- "."
    expect_equal(x, "aBC..fgh")
    expect_error({ x[1:2] <- "XYZ" },
                 "Number of characters is not equal to number of replacement indices")
    x[1:2] <- "XY"
    expect_equal(x, "XYC..fgh")
    expect_error({ x[1:3] <- as.character(1:2) }, "length of i and value are not equal")

    y = c(204,6502,57)
    y[1] <- 0
    expect_equal(y, c(0, 6502,57))
})
