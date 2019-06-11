#!/bin/bash

## JUST A TEMPLATE, ADAPT EVERYTHING!

java -jar /home/robert/Tools/Trimmomatic-0.38/trimmomatic-0.38.jar PE \
subsampled.reads/R1.fq \
subsampled.reads/R2.fq \
trimmed.hiseq/Jun-FP.fastq \
trimmed.hiseq/Jun-FU.fastq \
trimmed.hiseq/Jun-RP.fastq \
trimmed.hiseq/Jun-RU.fastq \
ILLUMINACLIP:/home/robert/Tools/Trimmomatic-0.38/adapters/TruSeq3-PE.fa:2:30:10 \
LEADING:3 TRAILING:3 \
SLIDINGWINDOW:6:30 MINLEN:36
