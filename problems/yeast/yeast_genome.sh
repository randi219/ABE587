#!/bin/bash


set -u

# download yeast genome
# autosomes
wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr{01..16}.fsa
# mt
wget http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chrmt.fsa

# put all fsa files into fasta folder
mkdir -p fasta
mv *.fsa ./fasta

# make a single whole genome file 'genome.fa'
cat ./fasta/*.fsa >> genome.fa

# count the chromesomes in the whole genome file, into file "chr-count"
cat genome.fa | grep '>' | wc -l > chr-count

# count size of total genome
cat genome.fa | grep -v '>' | wc -m > chr-size
