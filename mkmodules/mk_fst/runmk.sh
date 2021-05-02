#!/usr/bin/env bash

# find all the .vcf files in this directory
# change the .vcf files name
# ask for a vcftools fst output
find -L . \
  -type f \
  -name "*.vcf" \
| sed "s#.vcf#.log.weir.fst#" \
| xargs mk
