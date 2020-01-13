#!/usr/bin/perl

open FILE, "<mis_canales_temp_2.m3u";
@fichero = <FILE>;
close FILE;
 
open FILE, ">mis_canales.m3u";
for (@fichero) {
    s/\.m3u8/\.m3u8"\ \-map\ 0\ \-c\ copy\ \-metadata\ service_name\=\CLAROS\ \-tune\ zerolatency\ \-f\ mpegts\ pipe\:1/g;
    print FILE $_;
}
close FILE;



