#!/bin/bash

FRAC=$1
ALIGNMENT_MZTOL=$2
ALIGNMENT_RTTOL=$3
GROUPING_RTTOL=$4
ALPHA=$5

java -ea -jar ../alignment.jar -d ../input_data/P1/${FRAC} -gt ../input_data/P1/ground_truth/ground_truth_${FRAC}.txt -method MW -alignmentMzTol ${ALIGNMENT_MZTOL} -alignmentRtTol ${ALIGNMENT_RTTOL} -useGroup true -groupingMethod greedy -groupingRtWindow ${GROUPING_RTTOL} -alpha ${ALPHA}
