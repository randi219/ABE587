#!/usr/bin/env perl6

sub MAIN (Str $s1!, Str $s2!) {

    say ($s1.comb.map(*.ord) <<->> $s2.comb.map(*.ord)).map(* != 0).sum;	
}




