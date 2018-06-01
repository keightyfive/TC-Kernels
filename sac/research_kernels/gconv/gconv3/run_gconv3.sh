#!/bin/bash

for ((n=1; n<=100; n++))
do
echo "### run" "$n" >> gconv3_results.txt
nvprof ./gconv3 |& tee -a gconv3_results.txt
echo "--------------------------------" >> gconv3_results.txt
done

