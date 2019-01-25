#!/bin/bash

#script corre los modulos de stacks

#Build loci de novo
 
bash 1_stacks.sh

#Build catalog

bash 2_stacks.sh

#Genotype all samples against the catalog

bash 3_stacks.sh

#Prepare formated data and align reads

bash 4_stacks.sh

#Calculate genetic estimates

bash 5_stacks.sh
