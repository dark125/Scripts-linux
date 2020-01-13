#!/usr/bin/perl

open FILE, "<mis_canales_temp_2.m3u";
@fichero = <FILE>;
close FILE;
 
open FILE, ">mis_canales_temp_2.m3u";
for (@fichero) {
    s/^http\:\/\//pipe\:\/\/\/usr\/bin\/ffmpeg\ \-headers\ "User-Agent\: Mozilla\/5.0 \(Windows; U\; Windows\ NT\ 6.1\; en\-US\) AppleWebKit\/534\.20 \(KHTML,\ like\ Gecko\) Chrome\/11\.0\.672\.2 Safari\/534\.20" \-loglevel\ fatal\ \-re\ \-i\ "http\:\/\//g;
    print FILE $_;
}
close FILE;









