getCodonProbabilities <- function(A = .125, C = .375, G = .375, U = .125) {
  aaA <- c(G*C*U + G*C*C + G*C*A + G*C*G)	
  aaR <- c(C*G*U + C*G*C + C*G*A + C*G*G + A*G*A +A*G*G)	
  aaN <- c(A*A*U + A*A*C)
  aaD <- c(G*A*U + G*A*C)
  aaC <- c(U*G*U + U*G*C)
  aaQ <- c(C*A*A + C*A*G)
  aaE <- c(G*A*A + G*A*G)
  aaG <- c(G*G*U + G*G*C + G*G*A + G*G*G)	
  aaH <- c(C*A*U + C*A*C)
  aaI <- c(A*U*U + A*U*C + A*U*A)	
  aaM <- c(A*U*G)
  aaL <- c(U*U*A + U*U*G + C*U*U + C*U*C + C*U*A + C*U*G)	
  aaK <- c(A*A*A + A*A*G)
  aaF <- c(U*U*U + U*U*C)	
  aaP <- c(C*C*U + C*C*C + C*C*A + C*C*G)	
  aaS <- c(U*C*U + U*C*C + U*C*A + U*C*G + A*G*U + A*G*C)	
  aaT <- c(A*C*U + A*C*C + A*C*A + A*C*G)
  aaW <- c(U*G*G)
  aaY <- c(U*A*U + U*A*C)	
  aaV <- c(G*U*U + G*U*C + G*U*A + G*U*G)
  # Assumes there would be enough negative pressure to prevent stop codons from appearing randomly
  mwA <- aaA * 89.1
  mwR <- aaR * 174.2
  mwN <- aaN * 132.1
  mwD <- aaD * 133.1
  mwC <- aaC * 121.2
  mwQ <- aaQ * 146.2
  mwE <- aaE * 147.1
  mwG <- aaG * 75.1
  mwH <- aaH * 155.2
  mwI <- aaI * 131.2
  mwM <- aaM * 149.2
  mwL <- aaL * 131.2
  mwK <- aaK * 146.2
  mwF <- aaF * 165.2
  mwP <- aaP * 115.1
  mwS <- aaS * 105.1
  mwT <- aaT * 119.1
  mwW <- aaW * 204.2
  mwY <- aaY * 181.2
  mwV <- aaV * 117.1
  # Avg amino acid MW for this GC content:
  print(mwA + mwR + mwN + mwD + mwC + mwQ + mwE + mwG + mwH + mwI + mwM + mwL + mwK + mwF + mwP + mwS + mwT + mwW + mwY + mwV)
}

# Amino Acid LUT:

# Offload LUT for future reference?
# Neglect stop codons? Introns?