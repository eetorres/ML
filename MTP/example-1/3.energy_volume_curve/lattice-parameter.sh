#!/bin/bash

export OMP_NUM_THREADS=1

dir=`pwd`

for j in `seq 1 5`; do
  cd $j
  ../../mlp relax relax.ini --cfg-filename=../init.cfg --save-relaxed=relaxed.cfg --force-tolerance=1e-6 --stress-tolerance=1e-5
  if [ -f "relaxed.cfg_0" ]; then mv "relaxed.cfg_0" "relaxed.cfg"; fi
  cd $dir
done
