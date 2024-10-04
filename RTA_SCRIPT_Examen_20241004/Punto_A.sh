#!/bin/bash

# Creo una variable con el Path de la ubicación donde irán los archivos que cree
DIR_ARCHIVOS=~/repogit/UTNFRA_SO_1P2C_2024_HARRIET/RTA_ARCHIVOS_Examen_20241004

# Creo los directorios
mkdir -p "$DIR_ARCHIVOS"/{alumno_1,alumno_2,alumno_3}/{parcial_1,parcial_2,parcial_3}
mkdir -p "$DIR_ARCHIVOS"/profesores

# Printeo un mensaje de finalización
echo "Directorios creados con éxito en $DIR_ARCHIVOS"
