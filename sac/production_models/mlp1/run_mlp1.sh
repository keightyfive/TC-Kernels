#!/bin/bash

for ((n=1; n<=100; n++))
do
echo "### run" "$n" >> mlp1_results.txt
nvprof ./mlp1 |& tee -a mlp1_results.txt
echo "--------------------------------" >> mlp1_results.txt
done

