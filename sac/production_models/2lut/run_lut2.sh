#!/bin/bash

for ((n=1; n<=100; n++))
do
echo "### run" "$n" >> lut2_results.txt
nvprof ./lut2 |& tee -a lut2_results.txt
echo "--------------------------------" >> lut2_results.txt
done

