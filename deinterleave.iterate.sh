#!/bin/bash

## This script iterates the deinterleave.sh script accross files in a directory

## Place this script AND the deinterleave.sh script in the directory directly above your reads directory

## The directory *MUST BE NAMED* "interleaved_reads"

## The directory should have nothing else inside of it

# syntax of the deinterleave.sh script: 
# deinterleave_fastq.sh < interleaved.fastq f.fastq r.fastq

mkdir deinterleaved_reads

for f in interleaved_reads/*
	do 
	name=${f##*/}
  	base=${name%.fastq}
	deinterleave.sh < "$f" deinterleaved_reads/"${base}.f.fastq" deinterleaved_reads/"${base}.r.fastq"
done

