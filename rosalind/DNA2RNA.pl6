#!/usr/bin/env perl6


=begin comment

Transcribing DNA into RNA
~~~~~~~~~~~~~~~~~~~~~~~~~

given:  GATGGAACTTGACTACGTAAATT
expect: GAUGGAACUUGACUACGUAAAUU

=end comment


sub MAIN(Str $input = "GATGGAACTTGACTACGTAAATT") {

#    $_ = $input;
#    s:g/T/U/;
#    .say;

    say $input.trans('T' => 'U');
}
