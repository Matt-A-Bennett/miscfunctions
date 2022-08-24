test_that("conversion works", {
  expect_equal(date_str_to_num("Sun"), 1)
  expect_equal(date_str_to_num("Mon"), 2)
  expect_equal(date_str_to_num("Dec"), 12)
})
