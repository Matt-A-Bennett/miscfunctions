# miscfunctions

<!-- badges: start -->
[![R-CMD-check](https://github.com/Matt-A-Bennett/miscfunctions/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Matt-A-Bennett/miscfunctions/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/Matt-A-Bennett/miscfunctions/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/Matt-A-Bennett/miscfunctions/actions/workflows/test-coverage.yaml)
<!-- badges: end -->

## Installation

You can install the development version of miscfunctions like so:

``` r
devtools::install_github("Matt-A-Bennett/miscfunctions")
```

## Example

Given a string abbreviation of a day or a month, transform it into the
appropriate number:

``` r
library(miscfunctions)

date_str_to_num("Sun")
#> 1

date_str_to_num("Mon")
#> 2

date_str_to_num("Dec")
#> 12
```

