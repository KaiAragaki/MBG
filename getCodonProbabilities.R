library(tidyverse)
library(plyr)
library(Biostrings)
getCodonProbabilities <- function(A = .125, C = .325, G = .325, U = .125) {
  rowNames <- c("A","C","G","U")
  columnNames <- c("A", "C", "G", "U")
  matrixNames <- c("A", "C", "G", "U")
  aArray <- array(A, dim = c(4,4))
  cArray <- array(C, dim = c(4,4))
  gArray <- array(G, dim = c(4,4))
  uArray <- array(U, dim = c(4,4))
  threeNucProb <- array(dim = c(4,4,4), dimnames = list(rowNames, columnNames, matrixNames)) # Initialize empty array
  threeNucProb[,,1] <- aArray
  threeNucProb[,,2] <- cArray
  threeNucProb[,,3] <- gArray
  threeNucProb[,,4] <- uArray
  threeNucProb[,1,] <- threeNucProb[,1,]*aArray
  threeNucProb[,2,] <- threeNucProb[,2,]*cArray
  threeNucProb[,3,] <- threeNucProb[,3,]*gArray
  threeNucProb[,4,] <- threeNucProb[,4,]*uArray
  threeNucProb[1,,] <- threeNucProb[1,,]*aArray
  threeNucProb[2,,] <- threeNucProb[2,,]*cArray
  threeNucProb[3,,] <- threeNucProb[3,,]*gArray
  threeNucProb[4,,] <- threeNucProb[4,,]*uArray # Yeah, I get it. This is a loop just waiting to be made. That takes brain power.
  threeNucProb <<- threeNucProb # Push to global environment so I can prod it without rerunning the code
}
# TODO
# Generate codon LUT
# Index by codon name

# New New Plan:
# Call codons one at a time (lapply?)
# and have them do the penguin mother reunion "are you my mommy" call
# Bioconductor finds its child and tells it what amino acid it is, stores its probability
# Masses

for (i in 1:4){
  for (j in 1:4){
    for (k in 1:4){
      print(names(threeNucProb[i,j,k])) # Did I get the order right?
    }
  }
}
