#!/bin/bash

#Tarea 1.3
# Este script baja 5 secuencias de la del gen de la subunidad ribosomal de RNA 16S de la especie genypterus blacodes
# desde la base de datos de NCBI

# Crear directorio para guardar secuencias en BioinfinvRepro-master/Unidad1/Prac_Uni1
mkdir -p Genypterus_blacodes

# Descargar secuencias de NCBI 
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=315019161,298289615,194338405,307591043,315019159" > Genypterus_blacodes/g_blacodes.fasta

# Revisar secuencias descargadas
grep ">" Genypterus_blacodes/g_blacodes.fasta

# Buscar y contar "TGCA" en las secuencias
grep -c "TGCA" Genypterus_blacodes/g_blacodes.fasta
# la secuencia se encuentra 13 veces en el archivo