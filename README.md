# triangdist

<!-- badges: start -->
<!-- badges: end -->

The goal of triangdist is to implement the Triangular Distribution.

## Installation

You can install the development version of triangdist from [GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("hermeconTD/triangdist")
```

Or using remotes:

``` r
# install.packages("remotes")
remotes::install_github("hermeconTD/triangdist")
```

## Example

This is a basic example which shows you how to use triangdist:

``` r
library(triangdist)

# Density at x = 3 with min = 1, max = 6, mode = 3
dtriang(3, min = 1, max = 6, mode = 3)

# CDF at x = 3
ptriang(3, min = 1, max = 6, mode = 3)

# Quantile at p = 0.4
qtriang(0.4, min = 1, max = 6, mode = 3)

# Generate 10 random values
rtriang(10, min = 1, max = 6, mode = 3)
```
