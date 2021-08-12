# Estimate square root of a given positive number with given error

find_sqroot <- function(n, error) {
  root <- 0
  step <- error ** 2
  while (root <= n) {
    if (abs(root ** 2 - n) < error) {
      print(root)
      break
    } else {
      root <- root + step
    }
  }
}

find_sqroot(4, 0.01)
find_sqroot(23, 0.1)
