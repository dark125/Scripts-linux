#!/bin/bash

#Descargar la lista m3u

cd /home/pi/guia/Scripts

wget -O mis_canales_temp.m3u "http://192.168.2.106:8090/cualquiera.m3u"


#Aplicar los scripts perl
#Para reemplazar tvg-id=""


./reemplazar-epg.pl < mis_canales_temp.m3u > mis_canales_temp_2.m3u


#Enumerar canales

./enumerar-canales.pl


#Agregar pipe (antes y despues)

./pipe-adelante-con-headers.pl

./pipe-atras-con-headers.pl

#Mover mi lista m3u a la carpeta final, donde tvheadend pueda leerla

mv mis_canales.m3u /home/pi/guia/canales/mis_canales.m3u

#Eliminar los archivos creados

rm -f mis_canales_temp.m3u
rm -f mis_canales_temp_2.m3u > /dev/null 2>/dev/null
