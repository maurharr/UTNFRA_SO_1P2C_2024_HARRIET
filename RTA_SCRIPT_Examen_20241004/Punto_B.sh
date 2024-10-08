#!/bin/bash

#Busco particiones, filtro por el volumen, filtro el nombre de la partición y filtro nuevamente el nombre extrayendole los ':'
DISCO=$(sudo fdisk -l | grep "10 GiB" | awk '{ print $2}' | awk -F ':' '{print $1}')

DIR_ARCHIVOS=/Examenes-UTN

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

        +9G

        n
        l

        +200M

        n
        l

        +200M

        n
        l

        +200M

        n
        l

        +200M

        n
        l

        +200M

        n
        l

        +200M

        n
        l

        +200M

        n
        l

        +200M

        n
        l

        +200M

        n
        l

        +200M
        w
        echo "Particiones creadas con éxito."
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
	
        #   <dispositivo>               <dir>           <tipo>  <opciones>      <dump>  <fsck>
        echo "${DISCO}5 $DIR_ARCHIVOS/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
        echo "${DISCO}6 $DIR_ARCHIVOS/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
        echo "${DISCO}7 $DIR_ARCHIVOS/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
        echo "${DISCO}8 $DIR_ARCHIVOS/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
        echo "${DISCO}9 $DIR_ARCHIVOS/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
        echo "${DISCO}10 $DIR_ARCHIVOS/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
        echo "${DISCO}11 $DIR_ARCHIVOS/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
        echo "${DISCO}12 $DIR_ARCHIVOS/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
        echo "${DISCO}13 $DIR_ARCHIVOS/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
        echo "${DISCO}14 $DIR_ARCHIVOS/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

        sudo mount -a

	
	echo "======================================"
	echo
	echo "Particiones montadas con éxito."
	echo
	echo "======================================"

				
else
	echo "======================================"
	echo
	echo "El directorio no existe."
	echo
	echo "======================================"

fi
