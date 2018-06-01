#!/bin/bash

for ((n=1; n<=100; n++))
do
echo "### run" "$n" >> tmm2_results.txt
nvprof ./tmm2 |& tee -a tmm2_results.txt
echo "--------------------------------" >> tmm2_results.txt
done

