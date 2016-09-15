#!/bin/bash


set -u



# download the list of cerevisiae chromosome features
wget http://downloads.yeastgenome.org/curation/chromosomal_feature/SGD_features.tab

# Count total genes ('ORF's) into a file called 'gene-count.'
cat SGD_features.tab | awk '$2 == "ORF" {print $0}' > gene.tmp
wc -l gene.tmp | awk '{print $1}' > gene-count

# Count only verified genes into a file called 'verified-genes.'
cat gene.tmp | grep "Verified" | wc -l > verified-genes

# Count only uncharacterized genes into a file called 'uncharacterized-genes.'
cat gene.tmp | grep "Uncharacterized" | wc -l > uncharacterized-genes
 
