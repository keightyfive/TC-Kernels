#!/bin/bash

for ((n=1; n<=100; n++))
do
echo "### run" "$n" >> gconv2_results.txt
nvprof ./gconv2 |& tee -a gconv2_results.txt
echo "--------------------------------" >> gconv2_results.txt
done

