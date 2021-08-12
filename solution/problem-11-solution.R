# http://rosalind.info/problems/dna/

# Given string
s <- c('AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC')

# Count base
# For example AATGCCC has 2 A, 1 T, 1 G and 3 C
# Your code here

# Method 1
stringr::str_count(s, 'A')
stringr::str_count(s, 'C')
stringr::str_count(s, 'G')
stringr::str_count(s, 'T')

# Method 2
base <- strsplit(s, split='')
table(base)