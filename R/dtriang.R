# Package triangdist

## dtriang

dtriang <- function(x, min, max, mode) { # Density function.
  if (x < min) {
    res <- 0
  }
  if (x >= min & x <= mode) {
    res <- (2 * (x - min))/((max - min) * (mode - min))
  }
  if (x <= max & x >= mode) {
    res <- (2 * (max - x))/((max - min) * (max - mode))
  }
  if (x > max) {
    res <- 0
  }
  return(res)
}
