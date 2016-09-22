#!/usr/bin/env perl6

sub MAIN (Str $name) {
    my $lens = $name.chars; #> number of chars in a string
    put "Hello, $name, your name has $lens characters."
}
