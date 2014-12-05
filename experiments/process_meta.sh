#!/bin/bash

METHOD=$1
INDEX=$2
  
java -ea -jar ../alignment.jar -d ../input_data/metabolomics -gt ../input_data/metabolomics/ground_truth/ground_truth.txt -method ${METHOD} -experimentType standard -trainingIndex ${INDEX}
