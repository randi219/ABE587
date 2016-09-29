#!/usr/bin/env perl6

sub MAIN (Str $name) {
    #my $lens = $name.chars; #> number of chars in a string
    #put "Hello, $name, your name has $lens characters.";
    # can use printf
    # printf "Hello, %s, your name has %d characters.\n", $name, $lens; 
    put "Hello, $name, your name has {$name.chars} characters.";
}
