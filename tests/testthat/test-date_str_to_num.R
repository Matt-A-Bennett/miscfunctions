### date_str_to_num ###########################################################
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


### date_num_to_str ###########################################################
test_that("conversion works", {
  expect_equal(date_num_to_str(1, num_to = "day"), "Sun")
  expect_equal(date_num_to_str(2, num_to = "day"), "Mon")
  expect_equal(date_num_to_str(12, num_to = "month"), "Dec")
})

test_that("longform works", {
  expect_equal(date_num_to_str(1, num_to = "day", longform = TRUE), "Sunday")
  expect_equal(date_num_to_str(7, num_to = "day", longform = TRUE), "Saturday")
  expect_equal(date_num_to_str(12, num_to = "month", longform = TRUE), "December")
})

test_that("capitalisation works", {
  expect_equal(date_num_to_str(1, num_to = "day", lower = TRUE), "sun")
  expect_equal(date_num_to_str(7, num_to = "day", lower = TRUE), "sat")
  expect_equal(date_num_to_str(12, num_to = "month", lower = TRUE), "dec")
})

test_that("both longform and capitalisation work", {
  expect_equal(date_num_to_str(1, num_to = "day", lower = TRUE, longform = TRUE), "sunday")
  expect_equal(date_num_to_str(7, num_to = "day", lower = FALSE, longform = TRUE), "Saturday")
  expect_equal(date_num_to_str(12, num_to = "month", lower = TRUE, longform = FALSE), "dec")
})

test_that("bad-numbers fail", {
  expect_error(date_num_to_str(Inf, num_to = "day"), "numbers must be between 1 and 7 for num_to = 'day' and between 1 and 12 for num_to = 'month'")
  expect_error(date_num_to_str(8, num_to = "day"), "numbers must be between 1 and 7 for num_to = 'day' and between 1 and 12 for num_to = 'month'")
  expect_error(date_num_to_str(-1, num_to = "month"), "numbers must be between 1 and 7 for num_to = 'day' and between 1 and 12 for num_to = 'month'")
  expect_error(date_num_to_str(0, num_to = "month"), "numbers must be between 1 and 7 for num_to = 'day' and between 1 and 12 for num_to = 'month'")
})

test_that("edge cases are handled", {
  expect_error(date_num_to_str(NA, num_to = "day"), NA)
  expect_error(date_num_to_str("Sat", num_to = "day"), "input must be numeric")
})


