#!/usr/bin/env perl6

=begin comment

Translating RNA into Protein
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

given:  AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA
expect: MAMAPRTEINSTRING

=end comment



sub MAIN(Str $input = 'AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA') {

    substr($input, 0, 3) ~~ /^ AUG $/ ?? my $temp = $input.flip 
                                      !! die "Coult not find 'START' codon!";

    substr($temp, 0, 3).flip ~~ /^ UAA || UGA || UAG $/ ?? my $string = substr($temp, 3, $input.chars).flip 
                                                        !! die "Coult not find 'STOP' codon!";

    #my @tb = $string.uc.comb.rotor(3);
    my @tb = $string.uc.comb(3);
    
    #say ~@tb.map({translate($_.join)}).join;
    say ~@tb.map({translate($_)}).join;
}



sub translate(Str $bases) {
    my $res;

    given $bases {
	when /^ GC<[UCAG]> $/ { $res = 'A' }
	when /^ CG<[UCAG]> | AG<[AG]> $/ { $res = 'R' }
	when /^ AA<[UC]> $/ { $res = 'N' }
	when /^ GA<[UC]> $/ { $res = 'D' }
	when /^ UG<[UC]> $/ { $res = 'C' }
	when /^ CA<[AG]> $/ { $res = 'Q' }
	when /^ GA<[AG]> $/ { $res = 'E' }
	when /^ GG<[UCAG]> $/ { $res = 'G' }
	when /^ CA<[UC]> $/ { $res = 'H' }
	when /^ AU<[UCA]> $/ { $res = 'I' }
	when /^ <[UC]>U<[AG]> | CU<[UCAG]> $/ { $res = 'L' }
	when /^ AA<[AG]> $/ { $res = 'K' }
	when /^ AUG $/ { $res = 'M' }
	when /^ UU<[UC]> $/ { $res = 'F' }
	when /^ CC<[UCAG]> $/ { $res = 'P' }
	when /^ UC<[UCAG]> | AG<[UC]> $/ { $res = 'S' }
	when /^ AC<[UCAG]> $/ { $res = 'T' }
	when /^ UGG $/ { $res = 'W' }
	when /^ GU<[UCAG]> $/ { $res = 'V' }
	when /^ UA<[UC]> $/ { $res = 'Y' }
    }
    
    return $res;
}
