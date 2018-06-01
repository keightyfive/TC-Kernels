#!/bin/bash

for ((n=1; n<=100; n++))
do
echo "### run" "$n" >> c3_results.txt
nvprof ./c3 |& tee -a c3_results.txt
echo "--------------------------------" >> c3_results.txt
done

