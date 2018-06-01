#!/bin/bash

for ((n=1; n<=100; n++))
do
echo "### run" "$n" >> gconv1_results.txt
nvprof ./gconv1 |& tee -a gconv1_results.txt
echo "--------------------------------" >> gconv1_results.txt
done

