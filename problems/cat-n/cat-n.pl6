#!/usr/bin/env perl6

sub MAIN ($file) {

#   say "file ($file)";

#   die "Not a file ($file)" unless $file.IO.f;   #> IO.f as a file

## alternative way ##
#   if !$file.IO.f {
#	die "Not a file ($file)";
#   }

    my $i = 0
    for $file.IO.lines -> $line {
	put "$i ($line)"
    }

#    my @lines = $file.IO.lines;
#    say "all lines = (@lines)";

#    for $file.IO.lines -> $l1, $l2 {
#	put "line1 ($l1), line2 ($l2)";
#    }
	


}

