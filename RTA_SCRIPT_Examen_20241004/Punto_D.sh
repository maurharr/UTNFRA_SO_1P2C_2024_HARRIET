#!/bin/bash

DIR_ARCHIVOS=~/repogit/UTNFRA_SO_1P2C_2024_HARRIET/RTA_ARCHIVOS_Examen_20241004/

echo "Creando una estructura asimétrica..."
mkdir -p "$DIR_ARCHIVOS"/Estructura_Asimetrica/{correo/cartas_{1..100},correo/carteros_{1..10},clientes/cartas_{1..100}}
echo "Estructura asimétrica creada."

