#!/bin/bash

indices=( 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 );

mkdir -p results/meta/MWG_PS
for index in "${indices[@]}"; do
    ./process_meta_greedy_ps.sh ${index} | tee results/meta/MWG_PS/set_${index}.txt
done
