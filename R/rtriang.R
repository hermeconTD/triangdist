#' Random generation from triangular distribution
#'
#' Generates random values following a triangular distribution.
#'
#' @param n Number of observations
#' @param min Lower bound (a)
#' @param max Upper bound (b)
#' @param mode Mode (c)
#'
#' @return Numeric vector of random values
#' @export

rtriang <- function(n, min, max, mode) {

  # Error handling
  if (any(min >= max)) stop("min must be < max")
  if (any(mode < min | mode > max)) stop("mode must be in [min, max]")
  if (!is.numeric(n) || length(n) != 1 || n != floor(n) || n <= 0)
    stop("n must be a positive integer")

  u <- runif(n)
  qtriang(u, min, max, mode)
}
