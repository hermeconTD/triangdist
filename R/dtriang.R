#' Density of the triangular distribution
#'
#' Computes the probability density function of a triangular distribution.
#'
#' @param x Numeric vector of values
#' @param min Lower bound (a)
#' @param max Upper bound (b)
#' @param mode Mode (c)
#'
#' @return Numeric vector of densities
#' @export

dtriang <- function(x, min, max, mode) {

  # Error handling
  if (any(min >= max)) stop("min must be < max")
  if (any(mode < min | mode > max)) stop("mode must be in [min, max]")

  res <- numeric(length(x))

  res[x < min] <- 0

  left <- x >= min & x <= mode
  res[left] <- (2 * (x[left] - min)) / ((max - min) * (mode - min))

  right <- x > mode & x <= max
  res[right] <- (2 * (max - x[right])) / ((max - min) * (max - mode))

  res[x > max] <- 0

  return(res)
}
