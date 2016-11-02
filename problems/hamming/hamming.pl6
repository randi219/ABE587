#!/usr/bin/env perl6

#sub MAIN (Str $s1!, Str $s2!) {
#    my %dict = A=>0, G=>1, C=>2, T=>3;

#    my @h = %dict{$s1.comb} <<->> %dict{$s2.comb};

#    say @h.map(* != 0).sum;	
#}


sub MAIN (Str $s1!, Str $s2!) {

    my ($diff, $n, $count) = 0, 0, 0; 

    $diff = $s1.chars - $s2.chars;
    
    if $diff < 0 { $n = $s1.chars } else { $n = $s2.chars };

    for 0..^$n {                                    

        $count++ unless substr($s1, $_, 1) eq substr($s2, $_, 1);

    }
    
    say $count+abs($diff);

}



