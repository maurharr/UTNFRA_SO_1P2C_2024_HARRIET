#!/bin/bash

DIR_ARCHIVOS=~/repogit/UTNFRA_SO_1P2C_2024_HARRIET/RTA_ARCHIVOS_Examen_20241004/Examenes-UTN

echo "Creando los grupos."
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
echo "Grupos creados."


echo "Creando los usuarios."
sudo useradd -m -s /bin/bash -c "Alumno 1" -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "Alumno 2" -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "Alumno 3" -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "Profesores" -G p1c2_2024_gProfesores p1c2_2024_P1
echo "Usuarios creados."


echo "Asignandole a los directorios sus usuarios y grupos."
sudo chown p1c2_2024_A1.p1c2_2024_gAlumno $DIR_ARCHIVOS/alumno_1/
sudo chown p1c2_2024_A2.p1c2_2024_gAlumno $DIR_ARCHIVOS/alumno_2/
sudo chown p1c2_2024_A3.p1c2_2024_gAlumno $DIR_ARCHIVOS/alumno_3/
sudo chown p1c2_2024_P1.p1c2_2024_gProfesores $DIR_ARCHIVOS/profesores/
echo "Usuarios y grupos asignados."


echo "Asigno los permisos a los directorios."
sudo chmod 750 $DIR_ARCHIVOS/alumno_1/
sudo chmod 760 $DIR_ARCHIVOS/alumno_2/
sudo chmod 700 $DIR_ARCHIVOS/alumno_3/
sudo chmod 775 $DIR_ARCHIVOS/profesores/
echo "Permisos asignados."

