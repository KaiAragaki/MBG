library(tidyverse)
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
  threeNucProb[4,,] <- threeNucProb[4,,]*uArray
  View(threeNucProb)
  print(threeNucProb)
}