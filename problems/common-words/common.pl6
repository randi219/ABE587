#!/usr/bin/env perl6

sub MAIN ($input1!, $input2!) {
    die "Please provide two files." 
    unless $input1.IO.f && $input2.IO.f;

    my $fh1 = $input1.IO.slurp.lc;
    my $fh2 = $input2.IO.slurp.lc;
    my $fh  = $fh1~$fh2;

    my %bag1 = $fh1.subst(/<-[\w\s]>/, '', :g).words.Bag;
    my %bag2 = $fh2.subst(/<-[\w\s]>/, '', :g).words.Bag;
    my %bag  = $fh.subst(/<-[\w\s]>/, '', :g).words.Bag;

    my $count = 0;

    for %bag -> $pair {
	$count++ if $pair.value > max(%bag1{$pair.key}, %bag2{$pair.key});	
    }

    put $count;
}
