# http://rosalind.info/problems/revc/

# In DNA strings, symbols 'A' and 'T' are complements of each other,
# as are 'C' and 'G'.
# The reverse complement of a DNA string s is the string sc 
# formed by reversing the symbols of s,
# then taking the complement of each symbol 
# (e.g., the reverse complement of "GTCA" is "TGAC")

s <- c('AAAACCCGGT')

# Your code here
# Method 1
s %>% 
  chartr(old='ACTG', new='TGAC') %>% 
  stringi::stri_reverse()

# Method 2
strReverse <- function(x)
  sapply(lapply(strsplit(x, NULL), rev), paste, collapse="")

strReverse(chartr(s, old='ACTG', new='TGAC'))


