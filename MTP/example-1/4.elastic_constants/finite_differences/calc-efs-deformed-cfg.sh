#!/bin/bash

export OMP_NUM_THREADS=1

n_mtps=5

for ((p = 1; p <= $n_mtps; p++ ))
do

cd ElConst"$p"

for ((i = 1; i <= 4; i++ ))
do
../../../mlp calc-efs pot"$p".mtp "$i".cfg "$i"_efs.cfg
done

cd ../

done
