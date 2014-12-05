#!/bin/bash

methods=( 'MW' 'sima' 'join' );
indices=( 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 );

for method in "${methods[@]}"; do
    mkdir -p results/glyco/${method}
    for index in "${indices[@]}"; do
        ./process_glyco.sh ${method} ${index} | tee results/glyco/${method}/set_${index}.txt
    done
done
