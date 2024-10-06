#!/bin/bash

#Busco particiones, filtro por el volumen, filtro el nombre de la partición y filtro nuevamente el nombre extrayendole los ':'
DISCO=$(sudo fdisk -l | grep "10 GiB" | awk '{ print $2}' | awk -F ':' '{print $1}')

DIR_ARCHIVOS=~/repogit/UTNFRA_SO_1P2C_2024_HARRIET/Examenes-UTN

if [[ -d $DIR_ARCHIVOS ]]; then

	#-------- Comienzo a realizar las particiones 	
	echo "======================================"
	echo
	echo "Realizando particiones..."
	echo	
	echo "======================================"
	
	sudo fdisk $DISCO << FIN
	n
	e
	1
	2048
	+9G

	n
	l
	4096
	+200M

	n
	l
	415744
	+200M

	n
	l
	827392
	+200M

	n
	l
	1239040
	+200M

	n
	l
	1650688
	+200M

	n
	l
	2062336
	+200M

	n
	l
	2473984
	+200M

	n
	l
	2885632
	+200M

	n
	l
	3297280
	+200M

	n
	l
	3708928
	+200
	w
	echo "Particiones creadas con exíto."
FIN


	echo "======================================"
	echo
	echo "Formateo las particiones creadas."
	echo 	
	echo "======================================"
	sudo mkfs.ext4 ${DISCO}5
	sudo mkfs.ext4 ${DISCO}6
	sudo mkfs.ext4 ${DISCO}7
	sudo mkfs.ext4 ${DISCO}8
	sudo mkfs.ext4 ${DISCO}9
	sudo mkfs.ext4 ${DISCO}10
	sudo mkfs.ext4 ${DISCO}11
	sudo mkfs.ext4 ${DISCO}12
	sudo mkfs.ext4 ${DISCO}13
	sudo mkfs.ext4 ${DISCO}14

	
	echo "======================================"
	echo
	echo "Montando particiones..."
	echo	
	echo "======================================"
	
	sudo mount ${DISCO}5 $DIR_ARCHIVOS/alumno_1/parcial_1
	sudo mount ${DISCO}6 $DIR_ARCHIVOS/alumno_1/parcial_2
	sudo mount ${DISCO}7 $DIR_ARCHIVOS/alumno_1/parcial_3
	sudo mount ${DISCO}8 $DIR_ARCHIVOS/alumno_2/parcial_1
	sudo mount ${DISCO}9 $DIR_ARCHIVOS/alumno_2/parcial_2
	sudo mount ${DISCO}10 $DIR_ARCHIVOS/alumno_2/parcial_3
	sudo mount ${DISCO}11 $DIR_ARCHIVOS/alumno_3/parcial_1
	sudo mount ${DISCO}12 $DIR_ARCHIVOS/alumno_3/parcial_2
	sudo mount ${DISCO}13 $DIR_ARCHIVOS/alumno_3/parcial_3
	sudo mount ${DISCO}14 ~/repogit/UTNFRA_SO_1P2C_2024_HARRIET/Examenes-UTN/profesores/
	echo "======================================"
	echo
	echo "Particiones montadas con exíto."
	echo
	echo "======================================"

				
else
	echo "======================================"
	echo
	echo "El directorio $DIR_ARCHIVOS no existen"
	echo
	echo "======================================"

fi
