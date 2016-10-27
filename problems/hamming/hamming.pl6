#!/usr/bin/env perl6

use v6;

sub MAIN (Str $s1!, Str $s2!) {
    my %dict = A=>0, G=>1, C=>2, T=>3;

    my @h = %dict{$s1.comb} <<->> %dict{$s2.comb};

    say @h.map(* != 0).sum;	
}
