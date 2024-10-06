#!/bin/bash

DIR_ARCHIVOS=~/repogit/UTNFRA_SO_1P2C_2024_HARRIET/Examenes-UTN/

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
chown p1c2_2024_A1.p1c2_2024_gAlumno /Examenes-UTN/alumno_1/
chown p1c2_2024_A2.p1c2_2024_gAlumno /Examenes-UTN/alumno_2/
chown p1c2_2024_A3.p1c2_2024_gAlumno /Examenes-UTN/alumno_3/
chown p1c2_2024_P1.p1c2_2024_gProfesores /Examenes-UTN/profesores/
echo "Usuarios y grupos asignados."


echo "Asigno los permisos a los directorios."
chmod 750 $DIR_ARCHIVOS/alumno_1/
chmod 760 $DIR_ARCHIVOS/alumno_2/
chmod 700 $DIR_ARCHIVOS/alumno_3/
chmod 775 $DIR_ARCHIVOS/profesores/
echo "Permisos asignados."

