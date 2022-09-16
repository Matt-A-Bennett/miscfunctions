#' @title
#' Compute which parts of a string are matched by a regex
#' 
#' @description
#' Compute which parts of a string are matched by a regex. Used by the
#' str_showmatches() function.
#'
#' @param str string which regex will be matched against
#' @param pattern string containing the regex pattern
#' @return a string of underscore characters in places matched by the regex
#' (and whitespace for non-matching characters)
#' @examples 
#' str_showmatches("hello world!", "l.*r")
#' #> "  _______   "
#' 
#' str_showmatches("hello world!", "[a-z]")
#' #> "_____ _____ "
#' 
compute_match_display <- function(str, pattern) {
    positions <- stringi::stri_locate_all_regex(str, pattern)
    match_display <- strrep(" ", nchar(str))
    overline <- strrep("_", nchar(str))
    n_matches <- length(positions[[1]])/2
    if (n_matches > 0) {
        for (i in seq(n_matches)) {
            start <- positions[[1]][i, ][1]
            stop  <- positions[[1]][i, ][2]
            # substitute match_display with overline at corrrect positions
            substr(match_display, start, stop) <- overline
        }
    }
    return (match_display)
}


