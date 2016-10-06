#!/usr/bin/env perl6

=begin comment

read file lines and backwards print

=end comment


sub MAIN (Str $file!){           #> one required argument
    unless ($file.IO.f) {        #> must be a file
        USAGE;
	exit 1;
    }
   
    my @lines = $file.IO.lines;  #> save lines as an array
    @lines .= reverse;           #> reverse array
    
    for @lines -> $line {        #> go over each line 
        put $line;
    } 
}

# define USAGE
sub USAGE {
    note "Usage:\n\t{$*PROGRAM-NAME} <file>";
}
