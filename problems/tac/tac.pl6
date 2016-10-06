#!/usr/bin/env perl6

=begin comment

read file lines and backwards print

=end comment


sub MAIN (Str $file! where *.IO.f){           #> one required argument
#    unless ($file.IO.f) {        #> must be a file
#        USAGE;
#	exit 1;
#    }
   
    my @lines = $file.IO.lines;  #> save lines as an array
    put @lines.reverse.join("\n");

#    @lines .= reverse;           #> reverse array
     
#    for @lines -> $line {        #> go over each line 
#        put $line;
#    } 
}

# define USAGE
sub USAGE {
    note "Usage:\n\t{$*PROGRAM-NAME} <file>";
}

## other trivival method
## print an array from the last
# my @lines = $file.IO.lines;
# for 1..@lines.elems -> $n {
#     @lines[* - $n].say
# }

