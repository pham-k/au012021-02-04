# A palindromic string reads the same both ways
# Ex: 'aba', 'a', 'cbbbc'
# Given a string s, write a function to check if s is palindrome 
# This function returns TRUE or FALSE

is_palindrome <- function(s) {
  n <- stringr::str_length(s)
  if (n <= 1) {
    return (TRUE)
  } else {
    return ((substr(s, 1, 1) == substr(s, n, n)) && is_palindrome(substr(s, 2, n-1)))
  }
}
