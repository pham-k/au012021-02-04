# Given a vector a, find the index of largest element

find_max <- function(a) {
  index <- 1
  max <- a[1]
  for (i in (2:length(a))) {
    if (a[i] >= max) {
      max <- a[i]
      index <- i
    }
  }
  print(paste("Index of largest element is ", index))
}

a <- (runif(5))
a
find_max(a)