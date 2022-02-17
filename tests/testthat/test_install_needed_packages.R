installed_pkgs <- c("testthat", "fmgr")

test_that("check inputs", {
  expect_error(install_needed_packages(1))
  expect_error(install_needed_packages(installed_pkgs, "high"))
})
