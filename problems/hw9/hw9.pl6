#!/usr/bin/env perl6

enum Country  <China France Italy Japan Spain USA>;
enum Language <Chinese French Italian Japanese Spanish English>;


class Person {
    has Str      $.name;
    has Country  $.country;
    has Language $.language;
   
    method say-hello {
        my %dict = <Chinese NIHAU French BONJOUR Italian CIAO Japanese KONNICHIWA Spanish HOLA English HELLO>;
        sprintf "%s", %dict{$!language};
    }
}


my $ming = Person.new(name => 'Ming', country => China, language => Chinese);
my $sato = Person.new(name => 'Sato', country => Japan, language => Japanese);
my $juan = Person.new(name => 'Juan', country => Spain, language => Spanish);
my $john = Person.new(name => 'John', country => USA  , language => English);


for $ming, $juan, $sato, $john {
    printf "'I come from %s and speak %s', ", .country, .language;
    printf "%s says '%s'!\n", .name, .say-hello;
}
