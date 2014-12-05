#!/bin/bash

METHOD=$1
FRAC=$2
ALIGNMENT_MZTOL=$3
ALIGNMENT_RTTOL=$4
GROUPING_RTTOL=$5
ALPHA=$6

java -ea -jar ../alignment.jar -d ../input_data/P1/${FRAC} -gt ../input_data/P1/ground_truth/ground_truth_${FRAC}.txt -method ${METHOD} -alignmentMzTol ${ALIGNMENT_MZTOL} -alignmentRtTol ${ALIGNMENT_RTTOL} -useGroup true -groupingMethod posterior -groupingRtWindow ${GROUPING_RTTOL} -alpha ${ALPHA}
