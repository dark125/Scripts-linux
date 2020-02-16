#!/bin/bash

#Colocarse en la carpeta Scripts

cd /home/pi/guia/Scripts

#Ejecutar zap2xml.pl

./zap2xml.pl -z -C /home/pi/guia/Scripts/clarotv-sat-peru.txt -D -I -L -T -b

#Combinar egp peru con epg colombia en un archivo llamado claro-combinado.xmltv
#El nombre de este archivo esta en el archivo clarotv-col.txt

./zap2xml.pl -z -C /home/pi/guia/Scripts/clarotv-col.txt -J /home/pi/guia/temp_epg/claro-per.xmltv -D -I -L -T -b

#Eliminar los archivos temporales creados

cd /home/pi/guia/temp_epg

rm -f claro-per.xmltv > /dev/null 2>/dev/null
