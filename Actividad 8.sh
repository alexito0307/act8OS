#!/bin/bash

# 1. Listar todos los archivos del directorio bin.
ls /bin

# 2. Listar todos los archivos del directorio tmp.
ls /tmp

# 3. Listar todos los archivos del directorio etc que empiecen por t en orden inverso.
ls -r /etc/t*

# 4. Listar todos los archivos del directorio dev que empiecen por tty y tengan 5 caracteres.
ls /dev/tty??

# 5. Listar todos los archivos del directorio dev que empiecen por tty y acaben en 1,2,3 ó 4.
ls /dev/tty[1-4]

# 6. Listar todos los archivos del directorio dev que empiecen por t y acaben en C1.
ls /dev/t*C1

# 7. Listar todos los archivos, incluidos los ocultos, del directorio raíz.
ls -a /

# 8. Listar todos los archivos del directorio etc que no empiecen por t.
ls /etc/[^t]*

# 9. Listar todos los archivos del directorio usr y sus subdirectorios.
ls -R /usr

# 10. Cambiarse al directorio tmp.
cd /tmp

# 11. Verificar que el directorio actual ha cambiado.
pwd

# 12. Mostrar el día y la hora actual.
date

# 13. Con un solo comando posicionarse en el directorio $HOME.
cd ~

# 14. Verificar que se está en él.
pwd

# 15. Listar todos los ficheros del directorio HOME mostrando su número de inodo.
ls -i ~

# 16. Borrar todos los archivos y directorios visibles de vuestro directorio PRUEBA.
rm -r PRUEBA/*

# 17. Crear los directorios dir1, dir2 y dir3 en el directorio PRUEBA. Dentro de dir1 crear el directorio dir11. Dentro del directorio dir3 crear el directorio dir31. Dentro del directorio dir31, crear los directorios dir311 y dir312.
mkdir -p PRUEBA/dir{1,2,3/dir11,3/dir31/dir{311,312}}

# 18. Copiar el archivo /etc/motd a un archivo llamado mensaje de vuestro directorio PRUEBA.
cp /etc/motd PRUEBA/mensaje

# 19. Copiar mensaje en dir1, dir2 y dir3.
cp PRUEBA/mensaje PRUEBA/dir{1,2,3}

# 20. Comprobar el ejercicio anterior mediante un solo comando.
ls PRUEBA/{dir1,dir2,dir3}/mensaje

# 21. Copiar los archivos del directorio rc.d que se encuentra en /etc al directorio dir31.
cp -r /etc/rc.d/* PRUEBA/dir3/dir31

# 22. Copiar en el directorio dir311 los archivos de /bin que tengan una a como segunda letra y su nombre tenga cuatro letras.
cp /bin/t?a? PRUEBA/dir3/dir31

# 23. Copiar el directorio de otro usuario y sus subdirectorios debajo de dir11 (incluido el propio directorio).
cp -r /ruta/al/directorio/de/otro_usuario PRUEBA/dir1

# 24. Mover el directorio dir31 y sus subdirectorios debajo de dir2.
mv PRUEBA/dir3/dir31 PRUEBA/dir2/

# 25. Mostrar por pantalla los archivos ordinarios del directorio HOME y sus subdirectorios.
find ~ -type f

# 26. Ocultar el archivo mensaje del directorio dir3.
mv PRUEBA/dir3/mensaje PRUEBA/dir3/.mensaje

# 27. Borrar los archivos y directorios de dir1, incluido el propio directorio.
rm -r PRUEBA/dir1

# 28. Copiar al directorio dir312 los ficheros del directorio /dev que empiecen por t, acaben en una letra que vaya de la a a la b y tengan cinco letras en su nombre.
cp /dev/t[a-b]?? PRUEBA/dir3/dir312

# 29. Borrar los archivos de dir312 que no acaben en b y tengan una q como cuarta letra.
rm PRUEBA/dir3/dir312/*[^bt]*q*

# 30. Mover el directorio dir312 debajo de dir3.
mv PRUEBA/dir3/dir312 PRUEBA/dir3/

# 31. Crear un enlace simbólico al directorio dir1 dentro del directorio dir3 llamado enlacedir1.
ln -s PRUEBA/dir1 PRUEBA/dir3/enlacedir1

# 32. Posicionarse en dir3 y, empleando el enlace creado en el ejercicio anterior, crear el directorio nuevo1 dentro de dir1.
cd PRUEBA/dir3 && mkdir enlacedir1/nuevo1

# 33. Utilizando el enlace creado copiar los archivos que empiecen por u del directorio /bin en directorio nuevo1.
cp /bin/u* PRUEBA/dir3/enlacedir1/nuevo1/

# 34. Crear dos enlaces duros del fichero fich1, llamarlo enlace, en los directorios dir1 y dir2.
ln /ruta/a/fich1 PRUEBA/dir1/enlace
ln /ruta/a/fich1 PRUEBA/dir2/enlace

# 35. Borrar el archivo fich1 y copiar enlace en dir3.
rm /ruta/a/fich1
cp PRUEBA/dir2/enlace PRUEBA/dir3/

# 36. Crear un enlace simbólico (llamado enlafich1) al fichero enlace de dir2 en dir1.
ln -s PRUEBA/dir2/enlace PRUEBA/dir1/enlafich1

# 37. Posicionarse en dir1 y, mediante el enlace creado, copiar el archivo fich1 dentro de dir311.
cd PRUEBA/dir1
cp enlafich1 PRUEBA/dir3/dir31/dir311/fich1

# 38. Seguir en dir1 y, mediante el enlace creado, sacar por pantalla las líneas que tiene el archivo fich1.
cat enlafich1

# 39. Borrar el fichero fich1 de dir2
rm PRUEBA/dir2/enlace

# 40. Borrar todos los archivos y directorios creados durante los ejercicios.
rm -r PRUEBA/*

# 41. Crear el directorio dir2 y dir3 en el directorio PRUEBA ¿Cuáles son los actuales permisos del directorio dir2?
mkdir PRUEBA/dir2 PRUEBA/dir3
ls -ld PRUEBA/dir2

# 42. Utilizando la notación simbólica, eliminar todos los permisos de escritura (propietario, grupo, otros) del directorio dir2.
chmod a-w PRUEBA/dir2

# 43. Utilizando la notación octal, eliminar el permiso de lectura del directorio dir2, al resto de los usuarios.
chmod o-r PRUEBA/dir2

# 44. ¿Cuáles son ahora los permisos asociados a dir2?
ls -ld PRUEBA/dir2

# 45. Crear bajo dir2, un directorio llamado dir21.
mkdir PRUEBA/dir2/dir21

# 46. Concederse a sí mismo permiso de escritura en el directorio dir2 e intentar de nuevo el paso anterior.
chmod u+w PRUEBA/dir2

# 47. ¿Cuáles son los valores por omisión asignados a los archivos?
umask

# 48. Cambiar el directorio actual al directorio dir3. Imprimir su trayectoria completa para verificar el cambio.
cd PRUEBA/dir3
pwd

# 49. ¿Cuáles son los permisos asignados en su momento a este directorio?
ls -ld PRUEBA/dir3

# 50. Establecer mediante el coma umask ndo (buscar este comando) los siguientes valores por omisión: rwxr--r-- para los directorios y rw-r--r—para los archivos ordinarios.
umask 022

# 51. Crear cuatro nuevos directorios llamados dira, dirb, dirc, y dird bajo el directorio actual.
mkdir dira dirb dirc dird

# 52. Comprobar los permisos de acceso de los directorios recién creados para comprobar el funcionamiento del comando umask.
ls -ld dir*

# 53. Crear el fichero uno. Quitarle todos los permisos de lectura. Comprobarlo. Intentar borrar dicho fichero.
touch uno
chmod a-r uno
ls -l uno
rm uno

# 54. Quitarle todos los permisos de paso al directorio dir2 y otorgarle todos los demás.
chmod a-x dir2
chmod ugo+rwx dir2

# 55. Crear en el directorio propio: 
# El directorio carpeta1 con los tres permisos para el propietario, dentro de él fich1 con lectura y escritura para todos y fich2 con lectura y escritura para el propietario y solo lectura para el resto.
# El directorio carpeta2 con todos los permisos para el propietario y lectura y ejecución para los del mismo grupo. Dentro file1 con lectura y escritura para el propietario y los del grupo y file2 con los mismos para el propietario y solo lectura para el grupo.
mkdir carpeta1
chmod 700 carpeta1
touch carpeta1/fich1
chmod 666 carpeta1/fich1
touch carpeta1/fich2
chmod 644 carpeta1/fich2

mkdir carpeta2
chmod 750 carpeta2
touch carpeta2/file1
chmod 660 carpeta2/file1
touch carpeta2/file2
chmod 640 carpeta2/file2

# 56. Desde otro usuario probar todas las operaciones que se pueden hacer en los ficheros y directorios creados.

# 57. Visualizar la trayectoria completa del directorio actual. Crear dos directorios llamados correo y fuentes debajo del directorio actual.
pwd
mkdir correo fuentes

# 58. Posicionarse en el directorio fuentes y crear los directorios dir1, dir2, dir3.
cd fuentes
mkdir dir1 dir2 dir3

# 59. Crear el directorio menus bajo correo sin moverse del directorio actual.
mkdir ../correo/menus

# 60. Posicionarse en el directorio HOME. Borrar los directorios que cuelgan de fuentes que acaben en un número que no sea el 1.
cd
rm -r fuentes/*[^1]

# 61. Ver si existe el archivo tty2 en el directorio dev. En caso de que exista, ver su fecha de creación o actualización.
if [ -e /dev/tty2 ]; then
    stat /dev/tty2
fi

# 62. Ver los permisos que tienen los archivos que empiecen por tt del directorio /dev.
ls -l /dev/tt*

# 63. Visualizar la lista de los archivos ordinarios que están en el directorio /usr/bin.
ls -l /usr/bin | grep "^-"

# 64. Visualizar la lista de todos los directorios que cuelgan del raíz.
ls -l /

# 65. Visualizar la lista de todos los ficheros que pertenezcan a root.
find / -user root

# 66. Visualizar la lista de todos los ficheros .h del directorio /usr/include.
ls -l /usr/include/*.h

# 67. Ejecutar todos los comandos que empiecen por ls del directorio /bin.
/bin/ls -l

# 68. Visualizar de qué tipo son todos y cada uno de ficheros de todo el árbol del sistema propiedad de un usuario conocido.
# Reemplaza "usuario_conocido" con el nombre del usuario que desees.
find / -user usuario_conocido -exec file {} \;

# 69. Crear el directorio uno en el directorio HOME con permiso de escritura y paso para el propietario, de lectura y paso para los usuarios de su mismo grupo y ningún permiso para el resto de usuarios.
mkdir ~/uno
chmod 750 ~/uno

# 70. Crear el directorio uno1 dentro del directorio creado en el ejercicio anterior con todos los permisos para el usuario, ninguno para los usuarios del grupo y permiso de escritura para el resto de usuarios.
mkdir ~/uno/uno1
chmod 701 ~/uno/uno1

# 71. Copiar todos los ficheros propiedad de un usuario conocido que acaben en un número en el directorio menus.
# Reemplaza "usuario_conocido" con el nombre del usuario que desees.
find / -user usuario_conocido -name "*[0-9]" -exec cp {} ~/correo/menus \;

# 72. Visualiza con la orden who la relación de usuarios conectados y sus terminales. Mediante la orden cat, crea un pequeño mensaje desde tu consola y redirígelo a uno de los terminales conectados.
who
echo "Este es un mensaje desde la consola." > /dev/ttyX  # Reemplaza "ttyX" con el terminal deseado.

# 73. Crea un archivo de tamaño 0
touch archivo_vacio

# 74. Visualiza el archivo /etc/motd, que contiene el "mensaje del día".
cat /etc/motd

# 75. Utilizando de entrada la información de los usuarios conectados al sistema, guardar, ordenadas por el campo hora, las líneas correspondientes al usuario que se desee en el archivo persona.
# Reemplaza "nombre_usuario" con el nombre de usuario deseado.
who | grep "nombre_usuario" | sort -k4 > persona

# 76. Crear el directorio carpeta debajo del directorio PRUEBA. Quitarle todos los permisos de lectura. A continuación, buscar todos los directorios que cuelguen del directorio propio y guardarlos en el archivo direc.
mkdir PRUEBA/carpeta
chmod a-r PRUEBA/carpeta
find PRUEBA -type d > direc

# 77. Volver a realizar la segunda parte del ejercicio anterior, pero redireccionando los errores al fichero malos. Comprobar la información del fichero malos.
find PRUEBA -type d 2> malos
cat malos

# 78. Añadir al fichero direc la lista de todos los ficheros ordinarios que cuelguen de /etc.
find /etc -type f >> direc

# 79. Añadir al archivo nuevalista el/los nombre/s de el/los fichero/s del directorio PRUEBA que contengan en su nombre la cadena "ai", añadiendo el posible error al fichero malos.
find PRUEBA -name "*ai*" >> nuevalista 2>> malos

# 80. Sacar por pantalla únicamente el tiempo (buscar comando time) que tarda en ejecutarse el comando who.
time who

# 81. Sacar por pantalla un listado completo (buscar comando ps) de los procesos que está realizando el usuario root.
ps -u root

# 82. Crear el archivo proceso con los procesos que no tienen ningún terminal asignado.
ps -e | grep "pts" > proceso

# 83. Añadir al fichero anterior la fecha actual y la trayectoria completa del directorio actual.
date >> proceso
pwd >> proceso

# 84. Sacar por pantalla el listado de todos los usuarios conectados ordenados por número de proceso asignado.
w | sort -n

# 85. Averiguar cuál es la actividad actual del sistema. Para ello visualice un listado completo del estado de todos los procesos que se están ejecutando en el sistema.
ps aux

# 86. Obtener un listado con los siguientes datos de los procesos de su shell actual.
ps -p $$

# 87. Mostrar cuantos usuarios tiene registrados el sistema (el registro de usuarios está en el archivo /etc/passwd)
cat /etc/passwd | wc -l

# 88. Mostrar cuántos usuarios tiene registrados el sistema y que utilizan el intérprete bash (debe aparecer al final de la línea /bin/bash o similar)
grep "/bin/bash" /etc/passwd | wc -l

# 89. Mostrar cuantos usuarios hay conectados
who | wc -l

# 90. Mostrar las líneas, de un archivo de texto, empiecen por L (mayúscula o minúscula)
grep "^L" archivo.txt

# 91. Contar las líneas, del ejemplo anterior
grep "^L" archivo.txt | wc -l

# 92. Extraer los nombres de usuario (primer campo) del sistema
cut -d: -f1 /etc/passwd

# 93. Extraer los nombres de usuario y el shell que utilizan (último campo)
cut -d: -f1,7 /etc/passwd

# 94. Cambiar la fecha de creación de un archivo ya previamente creado
touch -d "2024-02-16 12:00" archivo

# 95. Calcular la firma md5 de un archivo
md5sum archivo

# 96. Modificar la firma md5 y detectar que se ha cambiado (revisión de firma)
md5sum archivo
echo "contenido_modificado" > archivo
md5sum archivo

# 97. Monitorear la ocupación de las particiones en los discos
df -h

# 98. ¿Cuál es el proceso que más carga el procesador?
top

# 99. ¿Está corriendo el proceso bash?
ps aux | grep bash

# 100. ¿Cuántos procesos que empiecen por k están corriendo?
ps aux | grep "^k" | wc -l
