#!/bin/bash

DIR_ARCHIVOS=~/repogit/UTNFRA_SO_1P2C_2024_HARRIET/RTA_ARCHIVOS_Examen_20241004

#Obtengo solo la información del Total de memoria Ram Y la información del fabricante del chassis para posteriormente entregarlo a un archivo de texto llamado "Filtro_Basico.Txt"
grep MemTotal /proc/meminfo > $DIR_ARCHIVOS/Filtro_Basico.txt && sudo dmidecode -t chassis | grep -A 10 Chassis >> $DIR_ARCHIVOS/Filtro_Basico.txt
echo "Información guardada en $DIR_ARCHIVOS/Filtro_Basico.txt"

