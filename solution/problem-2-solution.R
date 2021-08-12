# Given a vector a and 2 index i, j
# Swap 2 element at index i and j

swap <- function (a, i, j) {
  temp <- a[i]
  a[i] <- a[j]
  a[j] <- temp
  return (a)
}

v <- c(1, 2, 3, 5, 7)
v
v <- swap(v, 2, 4)
v
