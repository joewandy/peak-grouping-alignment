#!/bin/bash

INDEX=$1
  
java -ea -jar ../alignment.jar -d ../input_data/metabolomics -gt ../input_data/metabolomics/ground_truth/ground_truth.txt -method MW -experimentType standard -trainingIndex ${INDEX} -useGroup true -usePeakShape true -groupingMethod greedy -autoAlpha -autoOptimiseGreedy
