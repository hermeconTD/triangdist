#' CDF of the triangular distribution
#'
#' Computes the cumulative distribution function of a triangular distribution.
#'
#' @param q Numeric vector of values
#' @param min Lower bound (a)
#' @param max Upper bound (b)
#' @param mode Mode (c)
#'
#' @return Numeric vector of probabilities
#' @export

ptriang <- function(q, min, max, mode) {

  # Error handling
  if (any(min >= max)) stop("min must be < max")
  if (any(mode < min | mode > max)) stop("mode must be in [min, max]")

  res <- numeric(length(q))

  res[q < min] <- 0

  left <- q >= min & q <= mode
  res[left] <- ((q[left] - min)^2) / ((max - min) * (mode - min))

  right <- q > mode & q <= max
  res[right] <- 1 - ((max - q[right])^2) / ((max - min) * (max - mode))

  res[q > max] <- 1

  return(res)
}
