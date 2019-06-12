#!/bin/bash

## Generic script for generating genbank/ncbi-compliant annotated genome
## Be sure to adapt "locustag" to your genome; --locustag "P273" will lead to genes being called "P273_0001", "P273_0002" etc.

/home/rmurdoch/prokka/bin/prokka --compliant --locustag P273 Pseudomonas_sp_Strain_273.fasta
