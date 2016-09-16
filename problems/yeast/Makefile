.PHONY: all fasta features test clean

all: clean fasta genome chr-count chr-size features gene-count verified-genes uncharacterized-genes gene-types palinsreg terminated-genes

clean:
	find . \( -name \*gene\* -o -name chr-\* \) -exec rm {} \;

fasta:
	wget -P ./fasta/ -e robots=off -r -np -nd -l1 -nH -A .fsa http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/

genome: fasta
	cat ./fasta/*.fsa >> ./fasta/genome.fa

chr-count: genome
	cat ./fasta/genome.fa | grep 'chromosome' | wc -l > chr-count

chr-size: genome
	cat ./fasta/genome.fa | grep -v '>' | wc -m > chr-size

features:
	wget http://downloads.yeastgenome.org/curation/chromosomal_feature/SGD_features.tab

gene-count: features
	cat SGD_features.tab | awk '$$2 == "ORF" {print $$0}' | wc -l > gene-count

verified-genes: features
	cat SGD_features.tab | awk '$$2 == "ORF" {print $$0}' | grep -e "Verified\s" | wc -l > verified-genes

uncharacterized-genes: features
	cat SGD_features.tab | awk '$$2 == "ORF" {print $$0}' | grep "Uncharacterized" | wc -l > uncharacterized-genes

gene-types: features
	cat SGD_features.tab | awk '$$2 == "ORF" {print $$3}' | sort | uniq -c | sed 's/^ *//g' > gene-types

palinsreg:
	wget ftp://ftp.imicrobe.us/abe487/yeast/palinsreg.txt

terminated-genes: palinsreg
	grep -o '/G=[^ ]*' palinsreg.txt | cut -d '=' -f 2 | sort | uniq > terminated-genes

test:
	./test.pl6
