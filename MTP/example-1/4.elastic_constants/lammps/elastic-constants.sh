#!/bin/bash

export OMP_NUM_THREADS=1

n_mtps=5

rm -f ElasticConstants.txt

for ((p = 1; p <= $n_mtps; p++ ))
do

cd ElConst"$p"

../../../mlp convert-cfg relaxed"$p".cfg input.pos --output-format=lammps-datafile

../../../lmp -in in.elastic > ElasticConstants.txt

python read-ElasticConstants-create-file.py

cat ElasticConstants.txt >> ../ElasticConstants.txt

cd ../

done
