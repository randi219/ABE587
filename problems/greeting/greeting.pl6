#!/usr/bin/env perl6

sub MAIN (Str $name) {
    my $lens = $name.chars;
    put "Hello, $name, your name has $lens characters."
}
