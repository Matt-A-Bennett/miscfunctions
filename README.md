# miscfunctions

<!-- badges: start -->
[![R-CMD-check](https://github.com/Matt-A-Bennett/miscfunctions/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Matt-A-Bennett/miscfunctions/actions/workflows/R-CMD-check.yaml)
[![Codecov test coverage](https://codecov.io/gh/Matt-A-Bennett/miscfunctions/branch/main/graph/badge.svg)](https://app.codecov.io/gh/Matt-A-Bennett/miscfunctions?branch=main)
[![test-coverage](https://github.com/Matt-A-Bennett/miscfunctions/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/Matt-A-Bennett/miscfunctions/actions/workflows/test-coverage.yaml)
<!-- badges: end -->

## Installation

You can install the development version of miscfunctions like so:

``` r
devtools::install_github("Matt-A-Bennett/miscfunctions")
```

## Example

Given a string abbreviation of a day or a month, transform it into the
appropriate number, or vice versa:

``` r
library(miscfunctions)

# convert date string to number

date_str_to_num("Sun")
#> 1

date_str_to_num("monday")
#> 2

date_str_to_num("Dec")
#> 12

# convert number to date string

date_num_to_str(1, num_to = "day")
#> "Sun"

date_num_to_str(2, num_to = "day", lower = TRUE, longform = TRUE)
#> "monday"

date_num_to_str(12, num_to = "month")
#> "Dec"
```

