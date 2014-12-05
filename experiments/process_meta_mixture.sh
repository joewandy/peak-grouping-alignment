#!/bin/bash

INDEX=$1
  
# run MWM using previously-created clustering results to save time during evaluation

java -ea -jar ../alignment.jar -d ../input_data/metabolomics -gt ../input_data/metabolomics/ground_truth/ground_truth.txt -method MW -experimentType standard -trainingIndex ${INDEX} -useGroup true -groupingMethod posterior -autoAlpha

# alternatively, always recreate recluster features using the DP mixture instead of reusing previously-computed clustering results
# The parameter -groupingRtWindow corresponds to (1/delta) in the paper, so if in the supplementary, the value of delta is 0.2, then set this value to 5 here

# java -ea -jar alignment.jar -d input_data/metabolomics -gt input_data/metabolomics/ground_truth/ground_truth.txt -method MW -experimentType standard -trainingIndex ${INDEX} -useGroup true -groupingMethod posterior -autoAlpha -alwaysRecluster -groupingNSamples 1000 -groupingBurnIn 1000 -groupingRtWindow 5
