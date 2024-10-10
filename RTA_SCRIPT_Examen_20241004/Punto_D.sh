#!/bin/bash

DIR_ARCHIVOS=~/

echo "Creando una estructura asimétrica..."
mkdir -p "$DIR_ARCHIVOS"/Estructura_Asimetrica/{correo/cartas_{1..100},correo/carteros_{1..10},cliente/cartas_{1..100}}
echo "Estructura asimétrica creada."

