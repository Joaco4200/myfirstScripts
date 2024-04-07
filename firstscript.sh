#!/bin/bash

origen="C:/Users/joaqu/OneDrive/Desktop/Scripts/firstScript/original"

respaldo="C:/Users/joaqu/OneDrive/Desktop/Scripts/firstScript/respaldo"

#Verifico que la carpeta de origen exista.
if [ ! -d "$origen"]; then
    echo "Esta carpeta no existe."
    exit 1
fi


#Verifico que la carpeta de respaldo exista, si no, la creo.
if [ ! -d  "$respaldo" ]; then
    echo  "Creando carpeta de respaldo..."
    mkdir -p  "$respaldo"
fi

# Mensaje de confirmacion.
read -p "Seguro quieres respaldar tus archivos (Y/N): " confirmacion
if [ "$confirmacion" != "Y" ] && [ "$confirmacion" != "y" ]; then
    echo "Cancelando respaldo de archivos..."
    exit 0
fi

#Hago la copia de archivos.
echo  "Iniciando respaldo"
cp -r "$origen"/* "$respaldo"

#Verifico que haya copiado correctamente todos los archivos.
if [ $? -eq 0 ]; then
    echo "Respaldo completado."
else
    echo "Error al realizar el respaldo."
fi




