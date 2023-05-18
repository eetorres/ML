#!/bin/bash

export OMP_NUM_THREADS=1

for j in `seq 1 5`; do
  ../mlp calc-efs $j/pot$j.mtp deformed.cfg $j/deformed_efs.cfg
  python read-cfgs-write-energy-volume.py $j/deformed_efs.cfg $j/E_V.txt
done
