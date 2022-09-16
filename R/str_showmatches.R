#' @title
#' Visualise which parts of a string are matched by a regex
#' 
#' @description
#' Visualise which parts of a string are matched by a regex
#'
#' @param str string which regex will be matched against
#' @param pattern string containing the regex pattern
#' @return prints the regex pattern, the original string where matches are
#' indicated by a horizontal line above
#' @examples 
#' str_showmatches("hello world!", "l.*r")
#' #> pattern:  l.*r
#' #> matches:    _______
#' #> string :  hello world!
#' 
#' str_showmatches("hello world!", "[a-z]")
#' #> pattern:  [a-z]
#' #> matches:  _____ _____
#' #> string :  hello world!
#' 
#' @export
#'
str_showmatches <- function(str, pattern) { 
    match_display <- compute_match_display(str, pattern)
    # put overline above the original string
    cat("pattern: ", pattern, "\n")
    cat("matches: ", match_display, "\n")
    cat("string : ", str, "\n")
}

