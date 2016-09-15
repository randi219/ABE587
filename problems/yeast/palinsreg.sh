#!/bin/bash


set -u

# download file
wget ftp://ftp.imicrobe.us/abe487/yeast/palinsreg.txt

# step 8
grep -o '/G=[^ ]*' palinsreg.txt | cut -d '=' -f 2 | sort | uniq > terminated_genes
