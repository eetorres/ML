#!/bin/bash

echo Training set mindist:
../mlp mindist train.cfg

echo Test set mindist:
../mlp mindist test.cfg
