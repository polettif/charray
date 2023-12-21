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

    y = c(204,6502,57)
    y[1] <- 0
    expect_equal(y, c(0, 6502,57))
})
