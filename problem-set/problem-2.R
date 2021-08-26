# Given a vector a and 2 index i, j
# Swap 2 element at index i and j

swap <- function (v, i, j) {
  # your code here
  temp <- v[i]
  v[i] <- v[j]
  v[j] <- temp
  return (v)
}

v1 <- c(1, 2, 3, 5, 7)
v1 # 1 2 3 5 7
v2 <- swap(v1, 2, 4)
v2 # 1 5 3 2 7
