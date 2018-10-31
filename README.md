# MBG

## getCodonProbabilities

### Description
Glorified LUT that finds codon frequencies for a given GC content (default provided) then spits out the average amino acid weight.

### Ramblings
None

### Requirements
None

## addspace

### Description
Takes two arguments, a sequence and a codon to search for. Splices and dices a genome sequence, adds spaces every three nucleotides, then searches for the codon of interest (user defined).

### Ramblings
Poor coding practices, inconsistencies, and general bad mojo going on here. It works well enough.

### Requirements
Tidyverse, but technically only stringr
