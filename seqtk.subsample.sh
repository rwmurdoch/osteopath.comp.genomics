#!/bin/bash

#reads are first subsampled to generate approximately 40x coverage for S. aureus (2.8mb)

## CHANGE THIS FOR THIS GENOME

#this is 160,000,000 nt required, which is ~1,100,000 reads total or
#550,000 per for F and R files each

## CHANGE THIS FOR THIS PROJECT AND YOUR COMPUTER

/home/robert/Tools/seqtk/seqtk sample -s100 \
/home/robert/Dropbox/Projects/Jun/Jun.TCE.20181206/80-167759537_20181206/Rawdata/Hiseq/TCE-3_combined_R1.fastq.gz \
550000 > subsampled.reads/R1.fq

/home/robert/Tools/seqtk/seqtk sample -s100 \
/home/robert/Dropbox/Projects/Jun/Jun.TCE.20181206/80-167759537_20181206/Rawdata/Hiseq/TCE-3_combined_R2.fastq.gz \
550000 > subsampled.reads/R2.fq
