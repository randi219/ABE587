#!/usr/bin/env perl6

sub MAIN(Str $file!) {
    die "Not a file!" unless $file.IO.f;

    my Int $len = 0;
    my Int $word = 0;
    my Int $char = 0;

    for $file.IO.lines -> $line {
	$len++;
        $word += $line.words.elems;
        $char += $line.chars;
    }
    
    $char = $char + $len;
    
    say "lines ({$len}) words ({$word}) chars ({$char})";
}
