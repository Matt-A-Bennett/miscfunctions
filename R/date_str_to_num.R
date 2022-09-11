#' @title
#' Convert string representing day/month into numeric equivalent
#' 
#' @description
#' Convert a string describing a day or a month into its numeric equivalent.
#' Works with abbreviations and is case insensitive.
#'
#' @param x string representing a day or a month
#' @return a number representing the day or month
#' @examples 
#' date_str_to_num("Sun")
#' #> 1
#' 
#' date_str_to_num("monday")
#' #> 2
#' 
#' date_str_to_num("Dec")
#' #> 12
#' 
#' @export
#'
date_str_to_num <- function(x) {

    if (is.na(x)) return (NA)

    stopifnot("input must be of type character" = is.character(x)) 
    stopifnot ("string must be at least 3 characters" = nchar(x) >= 3) 

    x <- substr(tolower(x), 1, 3)

    days = c("sun" = 1, "mon" = 2, "tue" = 3, "wed" = 4,
             "thu" = 5, "fri" = 6, "sat" = 7)

    months = c("jan" = 1,  "feb" = 2,  "mar" = 3,  "apr" = 4,
               "may" = 5,  "jun" = 6,  "jul" = 7,  "aug" = 8,
               "sep" = 9,  "oct" = 10, "nov" = 11, "dec" = 12)

    if (x %in% names(days)) {
        return (as.numeric(days[x]))
    } else if (x %in% names(months)) {
        return (as.numeric(months[x]))
    } else {
        stop("this string doesn't look like a day or a month")
    }
}
