# Package triangdist

## ptriang

ptriang <- function(q, min, max, mode) { #Distribution function.
  if (q < min) {
    res <-  0
  }
  if (q >= min & q <= mode) {
    res <- (q - min)^2/((max - min) * (mode - min))
  }
  if (q <= max & q > mode) {
    res <- 1 - (max - q)^2/((max - min) * (max - mode))
  }
  if (q > max) {
    res <- 1
  }
  return (res)
}

