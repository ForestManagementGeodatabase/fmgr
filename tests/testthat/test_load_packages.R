need_pkgs <- c("testthat", "fmgr")

test_that("check load", {
  expect_equal(load_packages(need_pkgs), list(TRUE, TRUE))
})

test_that("check inputs", {
  expect_error(load_packages(1))
  expect_error(load_packages(c(1, 2)))
  expect_error(load_packages(data.frame(0)))
  expect_error(load_packages(c()))
})