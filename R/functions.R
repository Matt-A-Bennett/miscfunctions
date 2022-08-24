#' @title
#' Convert string abbreviation of day/month into numeric equivalent
#' 
#' @description
#' Convert a string abbreviation of a day or a month into its numeric
#' equivalent
#'
#' @param x string A three letter string representing a day or a month
#' @return a number 
#' @examples 
#' date_str_to_num("Sun")
#' 
#' #> 1
#' 
#' date_str_to_num("Mon")
#' 
#' #> 2
#' 
#' 
#' date_str_to_num("Dec")
#' 
#' #> 12
#' 
#' @export
#'
date_str_to_num <- function(x) {

    days = c("Sun" = 1, "Mon" = 2, "Tue" = 3,
              "Wed" = 4, "Thu" = 5, "Fri" = 6,
              "Sat" = 7)

    months = c("Jan" = 1, "Feb" = 2, "Mar" = 3,
              "Apr" = 4, "May" = 5, "Jun" = 6,
              "Jul" = 7, "Aug" = 8, "Sep" = 9,
              "Oct" = 10, "Nov" = 11, "Dec" = 12)

    if (x %in% names(days)) return (as.numeric(days[x]))
    if (x %in% names(months)) return (as.numeric(months[x]))
}

