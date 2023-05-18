#!/bin/bash

export OMP_NUM_THREADS=1

../mlp train init.mtp train.cfg --trained-pot-name=pot1.mtp --valid-cfgs=test.cfg
../mlp train init.mtp train.cfg --trained-pot-name=pot2.mtp --valid-cfgs=test.cfg
../mlp train init.mtp train.cfg --trained-pot-name=pot3.mtp --valid-cfgs=test.cfg
../mlp train init.mtp train.cfg --trained-pot-name=pot4.mtp --valid-cfgs=test.cfg
../mlp train init.mtp train.cfg --trained-pot-name=pot5.mtp --valid-cfgs=test.cfg
