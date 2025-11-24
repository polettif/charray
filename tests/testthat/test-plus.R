test_that("plus", {
    expect_identical("ABC" + "def", "ABCdef")
    expect_identical(c("A", "B") + "x", c("Ax", "Bx"))
    expect_identical(matrix(c("A", "B")) + "x", c("Ax", "Bx"))
    expect_identical(1 + 1, 2)
    expect_error(1 + "a", "Types do not match")
    expect_error("a" + 1, "Types do not match")
})
