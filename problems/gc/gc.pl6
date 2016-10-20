#!/usr/bin/env perl6

## guess species by gc content

# regular way
sub MAIN(Str $input!, Numeric :$threshold=0.3) {
    
    die "Not a file" unless $input.IO.f;

    for $input.IO.lines -> $seq {
	next if $seq.grep(/<[>]>/).so;

	#my $gc = $seq.uc.comb.grep(/<[GC]>/).elems / $seq.chars;
	my $gc = $seq.uc.comb.Bag<G C>.sum / $seq.chars;

	printf "%.2f: %s\n", $gc, $gc > $threshold ?? "burkholderia" !! "anthrax";
    } 
}


# using BioPerl6 - even slower
#
#use Bio::SeqIO;
#
#sub MAIN (Str $input!, :$threshold=0.3) {
#    die "Not a file" unless $input.IO.f;
#
#    my $seqIO = Bio::SeqIO.new(format => 'fasta', file => $input);
#
#    while (my $seq = $seqIO.next-Seq) {
#        my $gc = $seq.seq.uc.comb.Bag<G C>.sum / $seq.seq.chars;
#
#        printf "%.2f: %s\n", $gc, $gc <=  $threshold ?? "anthrax" !! "burkholderia";
#    }
#}

