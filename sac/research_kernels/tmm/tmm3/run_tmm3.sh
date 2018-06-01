#!/bin/bash

for ((n=1; n<=100; n++))
do
echo "### run" "$n" >> tmm3_results.txt
nvprof ./tmm3 |& tee -a tmm3_results.txt
echo "--------------------------------" >> tmm3_results.txt
done

