test_that("conversion works", {
  expect_equal(date_str_to_num("Sun"), 1)
  expect_equal(date_str_to_num("Mon"), 2)
  expect_equal(date_str_to_num("Dec"), 12)
})

test_that("changing case works", {
  expect_equal(date_str_to_num("wed"), 4)
  expect_equal(date_str_to_num("thu"), 5)
  expect_equal(date_str_to_num("apr"), 4)
})

test_that("long form works", {
  expect_equal(date_str_to_num("wednesday"), 4)
  expect_equal(date_str_to_num("thursday"), 5)
  expect_equal(date_str_to_num("april"), 4)
})

test_that("non-dates fail", {
  expect_error(date_str_to_num("hello"), "this string doesn't look like a day or a month")
  expect_error(date_str_to_num("fr"), "string must be at least 3 characters")
  expect_error(date_str_to_num(""), "string must be at least 3 characters")
  expect_error(date_str_to_num(0), "input must be of type character")
})

test_that("edge cases are handled", {
  expect_error(date_str_to_num(NA), NA)
})
