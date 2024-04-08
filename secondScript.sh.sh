#!/bin/bash

# Pedir al usuario que ingrese el nombre de los archivos que quiere cambiar.
read -p "Ingrese el nombre de los archivos que desea cambiar: " nombre_archivos

# Pedir al usuario que ingrese el nuevo nombre para los archivos.
read -p "Ingrese el nuevo nombre para los archivos: " nuevo_nombre

# Obtener la lista de archivos que coinciden con el nombre a cambiar.
archivos=$(ls | grep "$nombre_archivos")

# Itero sobre cada archivo encontrado y lo renombro.
for archivo in $archivos; do

    nuevo_nombre_archivo=$(echo "$archivo" | sed "s/$nombre_archivos/$nuevo_nombre/")
    
    mv "$archivo" "$nuevo_nombre_archivo"
    
    # Mensaje de confirmación en cada archivo.
    echo "Archivo $archivo renombrado a $nuevo_nombre_archivo"
done

echo "Archivos renombrados correctamente."