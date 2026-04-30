#' Quantile function of the triangular distribution
#'
#' Computes the inverse CDF of a triangular distribution.
#'
#' @param p Numeric vector of probabilities
#' @param min Lower bound (a)
#' @param max Upper bound (b)
#' @param mode Mode (c)
#'
#' @return Numeric vector of quantiles
#' @export

qtriang <- function(p, min, max, mode) {

  # Error handling
  if (any(min >= max)) stop("min must be < max")
  if (any(mode < min | mode > max)) stop("mode must be in [min, max]")
  if (any(p < 0 | p > 1)) stop("p must be in [0,1]")

  res <- numeric(length(p))

  Fc <- (mode - min) / (max - min)

  left <- p <= Fc
  res[left] <- min + sqrt(p[left] * (max - min) * (mode - min))

  right <- p > Fc
  res[right] <- max - sqrt((1 - p[right]) * (max - min) * (max - mode))

  return(res)
}
