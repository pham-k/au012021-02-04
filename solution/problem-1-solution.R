# Write functions to convert celcius degree to fahrenheit degree 
# and vice versa

c_to_f <- function (temp) {
  return (32 + 1.8*temp)
}

f_to_c <- function (temp) {
  return ((temp - 32) / 1.8)
}

c_to_f(37)
f_to_c(c_to_f(37))

