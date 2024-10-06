#!/bin/bash

# Creo una variable con el Path de la ubicación donde irán los archivos que cree
DIR_ARCHIVOS=~/repogit/UTNFRA_SO_1P2C_2024_HARRIET/

# Creo los directorios en una sola linea de codigo:
mkdir -p "$DIR_ARCHIVOS"/Examenes-UTN/{alumno_{1..3}/parcial_{1..3},/profesores}

# Printeo un mensaje de finalización
echo "Directorios creados con éxito en $DIR_ARCHIVOS"
