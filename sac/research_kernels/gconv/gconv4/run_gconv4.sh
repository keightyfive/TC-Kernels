#!/bin/bash

for ((n=1; n<=100; n++))
do
echo "### run" "$n" >> gconv4_results.txt
nvprof ./gconv4 |& tee -a gconv4_results.txt
echo "--------------------------------" >> gconv4_results.txt
done

