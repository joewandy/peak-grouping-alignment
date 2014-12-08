#!/bin/bash

FRAC=$1
ALIGNMENT_MZTOL=$2
ALIGNMENT_RTTOL=$3
GROUPING_RTTOL=$4
ALPHA=$5

java -ea -jar ../alignment.jar -d ../input_data/P1/${FRAC} -gt ../input_data/P1/ground_truth/ground_truth_${FRAC}.txt -method MW -alignmentMzTol ${ALIGNMENT_MZTOL} -alignmentRtTol ${ALIGNMENT_RTTOL} -useGroup true -groupingMethod posterior -groupingRtWindow ${GROUPING_RTTOL} -alpha ${ALPHA}

# alternatively, always recreate recluster features using the DP mixture instead of reusing previously-computed clustering results
# The parameter -groupingRtWindow corresponds to (1/delta) in the paper, so if in the supplementary, the value of delta is 0.2, then set this value to 5 here

# java -ea -jar ../alignment.jar -d ../input_data/P1/${FRAC} -gt ../input_data/P1/ground_truth/ground_truth_${FRAC}.txt -method MW -alignmentMzTol ${ALIGNMENT_MZTOL} -alignmentRtTol ${ALIGNMENT_RTTOL} -useGroup true -groupingMethod posterior -groupingRtWindow ${GROUPING_RTTOL} -alpha ${ALPHA} -alwaysRecluster -groupingNSamples 1000 -groupingBurnIn 1000 -groupingRtWindow 5
