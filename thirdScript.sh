#!/bin/bash

#Umbral del espacio del disco(ajustar segun la necesidad).
UMBRAL=10

#Obtiene el porcentaje de espacio disponible en el disco usando df y awk.
PORCENTAJE=$(df -h | awk 'NR==2 {print $5}' | sed 's/%//')

#Verifica si el porcentaje de espacio disponible es menor que el umbral establecido anteriormente.
if [ "$PORCENTAJE" -lt "$UMBRAL" ]; then
    #Espacio del disco esta por debajo del umbral.
    echo "Espacio del disco por debajo de $UMBRAL%."
    echo "Espacio del disco disponible: $PORCENTAJE%."
else
    # Espacio del disco por encima del umbral.
    echo "Espacio en disco suficiente."
fi
