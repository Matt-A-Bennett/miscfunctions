# miscfunctions

<!-- badges: start -->
[![Codecov test coverage](https://codecov.io/gh/Matt-A-Bennett/miscfunctions/branch/main/graph/badge.svg)](https://app.codecov.io/gh/Matt-A-Bennett/miscfunctions?branch=main)
[![R-CMD-check](https://github.com/Matt-A-Bennett/miscfunctions/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Matt-A-Bennett/miscfunctions/actions/workflows/R-CMD-check.yaml)
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

