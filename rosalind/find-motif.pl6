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

    for @temp.pairs -> $pair {
	if $pair.value.join eq $motif {printf "%d ", $pair.key + 1};
    }

    printf "\n";
   
 
#    my %res = @temp.map(*.join).pairs.grep(*.value eq $motif);
#    say %res.keys.sort.map(*.succ).join(' ');


#    my$count = 0;
#    for @temp -> $t {
#	$count++;
#	if $t.join eq $motif { printf "%d ", $count };
#    }

#    printf "\n";
}
