#!/usr/bin/perl

open FILE, "<mis_canales_temp_2.m3u";
@fichero = <FILE>;
close FILE;
 
my $i = 16;
                               
open FILE, ">mis_canales_temp_2.m3u";
for (@fichero) {
    s/tvg-chno="[^"]*/$& . ++$i/ge;
    print FILE $_;
}
close FILE;




