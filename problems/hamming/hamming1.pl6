#!/usr/bin/env perl6

sub MAIN (Str $s1!, Str $s2!) {

    say ($s1.ords <<->> $s2.ords).map(* != 0).sum;	
}




