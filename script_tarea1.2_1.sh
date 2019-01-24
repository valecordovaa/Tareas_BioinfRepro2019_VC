#!/bin/bash

#crear directorios Pob {A, B, C, D} y crear un archivo en cada directorio
# que diga "este es un individuo de la poblacion {A, B, C, D}"

#Valentina Cordova

cd ~/Desktop/BioinfinvRepro-master/Unidad1/Prac_Uni1/

for i in A B C D; do
mkdir -p Pob$i #crea directorios PobA PobB PobC PobD
echo "Este es un individuo de la poblacion $i" > Pob$i/individuo$i.txt # crea archivo en cada directorio
done
