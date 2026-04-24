# Package triangdist

## qtriang

qtriang <- function(p, min, max, mode) { #Quantile function.
  check <- (mode - min)^2/((max - min) * (mode - min))
  if (p <= check) {
    res <- min + sqrt(p * (max - min) * (mode - min))
  }
  if (p > check) {
    res <- max - sqrt((1 - p) * (max - min) * (max - mode))
  }
  return (res)
}
