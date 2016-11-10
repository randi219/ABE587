#!/usr/bin/env perl6

=begin comment

  input:
  GATATATGCATATACTT
  ATAT

  output:
  2 4 10

=end comment





sub MAIN(Str $input = 'GATATATGCATATACTT', Str $motif = 'ATAT') {
    my $n = $motif.chars;
    my @temp = $input.comb.rotor($n => -1*($n-1) );
    
    my$count = 0;
    for @temp -> $t {
	$count++;
	if $t.join eq $motif { printf "%d ", $count };
    }

    printf "\n";
}
