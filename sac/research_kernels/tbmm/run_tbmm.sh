#!/bin/bash

for ((n=1; n<=100; n++))
do
echo "### run" "$n" >> tbmm_results.txt
nvprof ./tbmm |& tee -a tbmm_results.txt
echo "--------------------------------" >> tbmm_results.txt
done

