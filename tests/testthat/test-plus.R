test_that("plus", {
    expect_equal("ABC" + "def", "ABCdef")
    expect_equal(c("A", "B") + "x", c("Ax", "Bx"))
    expect_equal(matrix(c("A", "B")) + "x", c("Ax", "Bx"))
    expect_equal(1 + 1, 2)
    expect_error(1 + "a", "Types do not match")
    expect_error("a" + 1, "Types do not match")
})
