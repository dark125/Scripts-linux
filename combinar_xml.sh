#!/bin/bash

#Ordenamos el primero xml

tv_sort --by-channel --output /home/pi/guia/temp_epg/colombia_temp.xml /home/pi/guia/temp_epg/colombia.xml >/dev/null 2>&1

#Ordenamos el segundo xml

tv_sort --by-channel --output /home/pi/guia/temp_epg/mexico_temp.xml /home/pi/guia/temp_epg/mexico.xml >/dev/null 2>&1

#Combinar archivos ordenados

tv_merge -i /home/pi/guia/temp_epg/mexico_temp.xml -m /home/pi/guia/temp_epg/colombia_temp.xml -o /home/pi/guia/epg/combinado_mex_co.xmltv


#Eliminar los archivos temporales creados


cd /home/pi/guia/temp_epg

rm -f colombia_temp.xml
rm -f mexico_temp.xml
rm -f mexico.xml
rm -f colombia.xml > /dev/null 2>/dev/null

