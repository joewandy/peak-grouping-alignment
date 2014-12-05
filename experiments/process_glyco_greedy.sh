#!/bin/bash

INDEX=$1
  
java -ea -jar ../alignment.jar -d ../input_data/glycomics -gt ../input_data/glycomics/ground_truth/ground_truth.txt -method MW -experimentType glyco -trainingIndex ${INDEX} -dataType simaFormat -useGroup true -groupingMethod greedy -autoAlpha -autoOptimiseGreedy
