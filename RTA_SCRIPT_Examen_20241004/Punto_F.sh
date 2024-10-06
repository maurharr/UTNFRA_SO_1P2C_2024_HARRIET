#!/bin/bash

DIR_ARCHIVOS=~/repogit/UTNFRA_SO_1P2C_2024_HARRIET/RTA_ARCHIVOS_Examen_20241004

#Obtengo mi IP Publica
MI_IP=$(curl -s ifconfig.me/ip)

#Obtengo mi usuario
MI_USER=$(whoami)

#Obtengo el Hash de mi Usuario
MI_HASH=$(sudo grep -i "$(whoami):" /etc/shadow | awk -F: '{print $2}')

#Obtengo la URL de mi repositorio
URL_REPO=$(git remote get-url origin)

#Guardo todo en Filtro_Avanzado.txt
echo "Mi IP Publica es: $MI_IP" > $DIR_ARCHIVOS/Filtro_Avanzado.txt && echo "Mi usuario es: $MI_USER" >> $DIR_ARCHIVOS/Filtro_Avanzado.txt && echo "El Hash de mi Usuario es: $MI_HASH" >> $DIR_ARCHIVOS/Filtro_Avanzado.txt && echo "La URL de mi repositorio es: $URL_REPO" >> $DIR_ARCHIVOS/Filtro_Avanzado.txt
echo "La información fue guardada en $DIR_ARCHIVOS/Filtro_Avanzado.txt"
