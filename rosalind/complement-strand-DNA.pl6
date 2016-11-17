#!/usr/bin/env perl6

=begin comment

Complementing a Strand of DNA
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

given  AAAACCCGGT
expect ACCGGGTTTT

=end comment




sub MAIN(Str $input = 'AAAACCCGGT') {
#    my %dict = A=>'T', G=>'C', C=>'G', T=>'A';
#    say ~%dict{$input.uc.comb}.reverse.join;

    say $input.uc.trans(['A','G','C','T'] => ['T','C','G','A']).flip;
}

