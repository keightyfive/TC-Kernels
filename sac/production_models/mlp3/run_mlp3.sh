#!/bin/bash

for ((n=1; n<=100; n++))
do
echo "### run" "$n" >> mlp3_results.txt
nvprof ./mlp3 |& tee -a mlp3_results.txt
echo "--------------------------------" >> mlp3_results.txt
done

