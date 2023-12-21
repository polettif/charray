test_that("plus", {
    expect_equal("ABC" + "def", "ABCdef")
    expect_equal(c("A", "B") + "x", c("Ax", "Bx"))
    expect_equal(matrix(c("A", "B")) + "x", c("Ax", "Bx"))
})
