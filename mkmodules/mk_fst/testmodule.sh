#!/bin/bash
# setting enviromental variables
export MART_EXPORT="./test/data/mart_export.txt"
export POP_CHB="./test/data/pop_chb"
export POP_PEL="./test/data/pop_pel"

rm -rf test/results/  #deleting results of last test
mkdir -p test/results/

# Correr el modulo
bash runmk.sh \
&& mv ./*.log.* \
  test/results \
&& echo "=== Successful module test  ==="
