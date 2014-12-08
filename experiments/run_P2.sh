#!/bin/bash

### Run methods with various optimal parameters found from gridscans for P2 fractions.
### This will produce the results in Table 12 Supplementary document. 
### Parameters described in Table 13 in Supplementary doc.

rm -rf results/P2
mkdir -p results/P2

### P2 fraction 000 ###

echo 'P2 fraction 000 - Join'               | tee -a results/P2/000.txt
./process_P2.sh join 000 1.3 115            | tee -a results/P2/000.txt
echo -en '\n'

echo 'P2 fraction 000 - SIMA'               | tee -a results/P2/000.txt
./process_P2.sh sima 000 1.4 135            | tee -a results/P2/000.txt
echo -en '\n'

echo 'P2 fraction 000 - MW'                 | tee -a results/P2/000.txt
./process_P2.sh mw 000 1.4 90               | tee -a results/P2/000.txt
echo -en '\n'

echo 'P2 fraction 000 - MWG'                | tee -a results/P2/000.txt
./process_P2_greedy.sh 000 1.1 115 5 0.2    | tee -a results/P2/000.txt
echo -en '\n'

echo 'P2 fraction 000 - MWM'                | tee -a results/P2/000.txt
./process_P2_mixture.sh 000 1.4 90 5 1      | tee -a results/P2/000.txt
echo -en '\n'

### P2 fraction 020 ###

echo 'P2 fraction 020 - Join'               | tee -a results/P2/020.txt
./process_P2.sh join 020 1.5 125            | tee -a results/P2/020.txt
echo -en '\n'

echo 'P2 fraction 020 - SIMA'               | tee -a results/P2/020.txt
./process_P2.sh sima 020 1.8 155            | tee -a results/P2/020.txt
echo -en '\n'

echo 'P2 fraction 020 - MW'                 | tee -a results/P2/020.txt
./process_P2.sh mw 020 1.4 120              | tee -a results/P2/020.txt
echo -en '\n'

echo 'P2 fraction 020 - MWG'                | tee -a results/P2/020.txt
./process_P2_greedy.sh 020 1.4 120 7 0.3    | tee -a results/P2/020.txt
echo -en '\n'

echo 'P2 fraction 020 - MWM'                | tee -a results/P2/020.txt
./process_P2_mixture.sh 020 1.4 120 5 0.9   | tee -a results/P2/020.txt
echo -en '\n'

### P2 fraction 040 ###

echo 'P2 fraction 040 - Join'               | tee -a results/P2/040.txt
./process_P2.sh join 040 1.7 105            | tee -a results/P2/040.txt
echo -en '\n'

echo 'P2 fraction 040 - SIMA'               | tee -a results/P2/040.txt
./process_P2.sh sima 040 1.7 145            | tee -a results/P2/040.txt
echo -en '\n'

echo 'P2 fraction 040 - MW'                 | tee -a results/P2/040.txt
./process_P2.sh mw 040 1.6 140              | tee -a results/P2/040.txt
echo -en '\n'

echo 'P2 fraction 040 - MWG'                | tee -a results/P2/040.txt
./process_P2_greedy.sh 040 1.8 160 3 0.2    | tee -a results/P2/040.txt
echo -en '\n'

echo 'P2 fraction 040 - MWM'                | tee -a results/P2/040.txt
./process_P2_mixture.sh 040 1.5 130 5 0.9   | tee -a results/P2/040.txt
echo -en '\n'

### P2 fraction 080 ###

echo 'P2 fraction 080 - Join'               | tee -a results/P2/080.txt
./process_P2.sh join 080 1.5 225            | tee -a results/P2/080.txt
echo -en '\n'

echo 'P2 fraction 080 - SIMA'               | tee -a results/P2/080.txt
./process_P2.sh sima 080 1.2 300            | tee -a results/P2/080.txt
echo -en '\n'

echo 'P2 fraction 080 - MW'                 | tee -a results/P2/080.txt
./process_P2.sh mw 080 1.1 275              | tee -a results/P2/080.txt
echo -en '\n'

echo 'P2 fraction 080 - MWG'                | tee -a results/P2/080.txt
./process_P2_greedy.sh 080 1.1 275 1 0.1    | tee -a results/P2/080.txt
echo -en '\n'

echo 'P2 fraction 080 - MWM'                | tee -a results/P2/080.txt
./process_P2_mixture.sh 080 1.8 195 5 0.7   | tee -a results/P2/080.txt
echo -en '\n'

### P2 fraction 100 ###

echo 'P2 fraction 100 - Join'               | tee -a results/P2/100.txt
./process_P2.sh join 100 1.7 140            | tee -a results/P2/100.txt
echo -en '\n'

echo 'P2 fraction 100 - SIMA'               | tee -a results/P2/100.txt
./process_P2.sh sima 100 1.5 115            | tee -a results/P2/100.txt
echo -en '\n'

echo 'P2 fraction 100 - MW'                 | tee -a results/P2/100.txt
./process_P2.sh mw 100 1.0 140              | tee -a results/P2/100.txt
echo -en '\n'

echo 'P2 fraction 100 - MWG'                | tee -a results/P2/100.txt
./process_P2_greedy.sh 100 1.6 215 8 0.2    | tee -a results/P2/100.txt
echo -en '\n'

echo 'P2 fraction 100 - MWM'                | tee -a results/P2/100.txt
./process_P2_mixture.sh 100 1.3 250 5 0.1   | tee -a results/P2/100.txt
echo -en '\n'
