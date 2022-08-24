#' @title
#' Convert number representing day/month into string equivalent
#' 
#' @description
#' Convert a number describing a day or a month into its string equivalent.
#' Can give an abbreviated or long form string
#'
#' @param x number representing a day or a month
#' @param num_to string specifying what type of date to convert ("day" or
#' "month")
#' @param lower boolean specifying whether to return lower case string (default
#' is to capitalise the first character)
#' @param longform boolean specifying whether to return the entire string
#' (default is to abbreviate to the first 3 letters)
#' @return a string representing the day or month
#' @examples 
#' date_num_to_str(1, num_to = "day")
#' #> "Sun"
#' 
#' date_num_to_str(2, num_to = "day", lower = TRUE, longform = TRUE)
#' #> "monday"
#' 
#' date_num_to_str(12, num_to = "month")
#' #> "Dec"
#' 
#' @export
#'
date_num_to_str <- function(x, num_to, lower = FALSE, longform = FALSE) {

    if (is.na(x)) return (NA)
    if (!is.numeric(x)) stop("input must be numeric")
    if (x <= 0 || x > 12) stop("numbers must be between 1 and 7 for num_to = 'day' and between 1 and 12 for num_to = 'month'")
    if (num_to == "day" &&  x > 7) stop("numbers must be between 1 and 7 for num_to = 'day' and between 1 and 12 for num_to = 'month'")


    days = c("Sunday",   "Monday", "Tueday",   "Wednesday",
             "Thursday", "Friday", "Saturday")

    months = c("January",   "Febuary", "March",    "April",
               "May",       "June",    "July",     "August",
               "September", "October", "November", "December")

    if (num_to == "day") {
        x <- (days[x])
    } else if (num_to == "month") {
        x <- (months[x])
    }

    if (!longform) {
        x <- substr(x, 1, 3)
    }
    if (lower) {
        x <- tolower(x)
    }

    return (x)
}
