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
