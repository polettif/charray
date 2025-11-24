test_that("collapse", {
    abcd = c("a", "b", "c", "d")
    xyz = c("x", "y", "z")
    expect_identical(collapse(abcd), "abcd")
    expect_error(collapse(abcd, xyz))
})
