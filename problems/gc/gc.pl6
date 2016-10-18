#!/usr/bin/env perl6

sub MAIN(Str $input!, Numeric :$threshold=0.3) {
    
    die "Not a file" unless $input.IO.f;

    for $input.IO.lines -> $seq {
	next if $seq.grep(/<[>]>/).so;

	my $gc = $seq.uc.comb.grep(/<[GC]>/).elems / $seq.chars;

	printf "%.2f: %s\n", $gc, $gc > $threshold ?? "burkholderia" !! "anthrax";
    } 
}
