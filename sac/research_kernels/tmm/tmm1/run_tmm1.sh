#!/bin/bash

for ((n=1; n<=100; n++))
do
echo "### run" "$n" >> tmm1_results.txt
nvprof ./tmm1 |& tee -a tmm1_results.txt
echo "--------------------------------" >> tmm1_results.txt
done

