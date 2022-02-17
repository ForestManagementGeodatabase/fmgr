df1 <- data.frame(SITE_NEW = c("c001u001", "c001u002"))
df2 <- data.frame(SITE_ID  = c("c001u001", "c001u002"))
df3 <- data.frame(SITEID   = c("c001u001", "c001u002"))
df4 <- data.frame(SiteID   = c("c001u001", "c001u002"))

df1_fixed <- fix_fmg_id(df1)
df2_fixed <- fix_fmg_id(df2)
df3_fixed <- fix_fmg_id(df3)
df4_fixed <- fix_fmg_id(df4)

testthat::test_that("check field renaming", {
  expect_true("Site_ID" %in% colnames(df1_fixed))
  expect_true("Site_ID" %in% colnames(df2_fixed))
  expect_true("Site_ID" %in% colnames(df3_fixed))
  expect_true("Site_ID" %in% colnames(df4_fixed))
})

test_that("check errors", {
  expect_error(fix_fmg_id(1))
})