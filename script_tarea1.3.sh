#!/bin/bash

#Tarea 1.3
# Este script baja 5 secuencias de la del gen de la subunidad ribosomal de RNA 16S de la especie genypterus blacodes
# desde la base de datos de NCBI

# Crear directorio para guardar secuencias en BioinfinvRepro-master/Unidad1/Prac_Uni1
mkdir -p Genypterus_blacodes

# Descargar secuencias de NCBI 
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=315019161" > Genypterus_blacodes/g_blacodes1.fasta
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=298289615" > Genypterus_blacodes/g_blacodes2.fasta
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=194338405" > Genypterus_blacodes/g_blacodes3.fasta
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=307591043" > Genypterus_blacodes/g_blacodes4.fasta
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=315019159" > Genypterus_blacodes/g_blacodes5.fasta
cat Genypterus_blacodes/g_blacodes*.fasta >> Genypterus_blacodes/g_blacodes.fasta

# Revisar secuencias descargadas
grep ">" Genypterus_blacodes/g_blacodes.fasta

# Buscar y contar "TGCA" en cada una de las secuencias
for i in g_blacodes*.fasta; do
grep -c "TGCA" Genypterus_blacodes/$i
done
# la secuencia se encuentra 11 veces en el archivo; 2, 3, 3, 3 y 0 veces respectivamente en cada una de las secuencias descargadas "g_blacodes[1-5].fasta"
