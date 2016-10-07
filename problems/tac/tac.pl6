#!/usr/bin/env perl6

=begin comment

read file lines and backwards print

changed test file on 10/07

=end comment

sub MAIN (Str $file!) {
    die "Not a file" unless $file.IO.f;
    
    $file.IO.lines.reverse.map(*.say);
}








#sub MAIN (Str $file! where *.IO.f){      #> one required argument that must be a file 

#    $file.IO.lines.reverse.map(*.say);

## old code ##
#    unless ($file.IO.f) {        #> must be a file
#        USAGE;
#	exit 1;
#    } 
   
#    my @lines = $file.IO.lines;  #> save lines as an array
#    put @lines.reverse.join("\n");
#    @lines .= reverse;           #> reverse array
#    for @lines -> $line {        #> go over each line 
#        put $line;
#    }
 
#}




## define USAGE - not necessary
#sub USAGE {
#    note "Usage:\n\t{$*PROGRAM-NAME} <file>";
#}

## other trivival method
## print an array from the last
# my @lines = $file.IO.lines;
# for 1..@lines.elems -> $n {
#     @lines[* - $n].say      #> no need to reverse    
# }

