#!/bin/bash

METHOD=$1
INDEX=$2
  
java -ea -jar ../alignment.jar -d ../input_data/glycomics -gt ../input_data/glycomics/ground_truth/ground_truth.txt -method ${METHOD} -experimentType glyco -trainingIndex ${INDEX} -dataType simaFormat
