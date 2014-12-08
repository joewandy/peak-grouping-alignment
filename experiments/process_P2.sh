#!/bin/bash

METHOD=$1
FRAC=$2
MZTOL=$3
RTTOL=$4
  
java -ea -jar ../alignment.jar -d ../input_data/P2/${FRAC} -gt ../input_data/P2/ground_truth/ground_truth_${FRAC}.txt -method ${METHOD} -alignmentMzTol ${MZTOL} -alignmentRtTol ${RTTOL}
