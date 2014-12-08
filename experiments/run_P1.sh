#!/bin/bash

### Run methods with various optimal parameters found from gridscans for P1 fractions.
### This will produce the results in Table 10 Supplementary document. 
### Parameters described in Table 11 in Supplementary doc.

rm -rf results/P1
mkdir -p results/P1

### P1 fraction 000 ###

echo 'P1 fraction 000 - Join'               | tee -a results/P1/000.txt
./process_P1.sh join 000 1.5 100            | tee -a results/P1/000.txt
echo -en '\n'

echo 'P1 fraction 000 - SIMA'               | tee -a results/P1/000.txt
./process_P1.sh sima 000 1.7 100            | tee -a results/P1/000.txt
echo -en '\n'

echo 'P1 fraction 000 - MW'                 | tee -a results/P1/000.txt
./process_P1.sh mw 000 1.7 100              | tee -a results/P1/000.txt
echo -en '\n'

echo 'P1 fraction 000 - MWG'                | tee -a results/P1/000.txt
./process_P1_greedy.sh 000 1.7 105 10 0.2   | tee -a results/P1/000.txt
echo -en '\n'

echo 'P1 fraction 000 - MWM'                | tee -a results/P1/000.txt
./process_P1_mixture.sh 000 1.4 135 5 0.1   | tee -a results/P1/000.txt
echo -en '\n'

### P1 fraction 020 ###

echo 'P1 fraction 020 - Join'               | tee -a results/P1/020.txt
./process_P1.sh join 020 1.4 105            | tee -a results/P1/020.txt
echo -en '\n'

echo 'P1 fraction 020 - SIMA'               | tee -a results/P1/020.txt
./process_P1.sh sima 020 1.4 110            | tee -a results/P1/020.txt
echo -en '\n'

echo 'P1 fraction 020 - MW'                 | tee -a results/P1/020.txt
./process_P1.sh mw 020 1.4 110              | tee -a results/P1/020.txt
echo -en '\n'

echo 'P1 fraction 020 - MWG'                | tee -a results/P1/020.txt
./process_P1_greedy.sh 020 1.5 285 9 0.3    | tee -a results/P1/020.txt
echo -en '\n'

echo 'P1 fraction 020 - MWM'                | tee -a results/P1/020.txt
./process_P1_mixture.sh 020 1.3 70 5 0.1    | tee -a results/P1/020.txt
echo -en '\n'

### P1 fraction 040 ###

echo 'P1 fraction 040 - Join'               | tee -a results/P1/040.txt
./process_P1.sh join 040 1.4 90             | tee -a results/P1/040.txt
echo -en '\n'

echo 'P1 fraction 040 - SIMA'               | tee -a results/P1/040.txt
./process_P1.sh sima 040 1.6 90             | tee -a results/P1/040.txt
echo -en '\n'

echo 'P1 fraction 040 - MW'                 | tee -a results/P1/040.txt
./process_P1.sh mw 040 1.6 90               | tee -a results/P1/040.txt
echo -en '\n'

echo 'P1 fraction 040 - MWG'                | tee -a results/P1/040.txt
./process_P1_greedy.sh 040 1.4 90 4 0.3     | tee -a results/P1/040.txt
echo -en '\n'

echo 'P1 fraction 040 - MWM'                | tee -a results/P1/040.txt
./process_P1_mixture.sh 040 1.4 90 5 0.1    | tee -a results/P1/040.txt
echo -en '\n'

### P1 fraction 060 ###

echo 'P1 fraction 060 - Join'               | tee -a results/P1/060.txt
./process_P1.sh join 060 1.4 160            | tee -a results/P1/060.txt
echo -en '\n'

echo 'P1 fraction 060 - SIMA'               | tee -a results/P1/060.txt
./process_P1.sh sima 060 1.7 185            | tee -a results/P1/060.txt
echo -en '\n'

echo 'P1 fraction 060 - MW'                 | tee -a results/P1/060.txt
./process_P1.sh mw 060 1.5 170              | tee -a results/P1/060.txt
echo -en '\n'

echo 'P1 fraction 060 - MWG'                | tee -a results/P1/060.txt
./process_P1_greedy.sh 060 1.4 150 9 0.2    | tee -a results/P1/060.txt
echo -en '\n'

echo 'P1 fraction 060 - MWM'                | tee -a results/P1/060.txt
./process_P1_mixture.sh 060 1.5 145 5 0.1   | tee -a results/P1/060.txt
echo -en '\n'

### P1 fraction 080 ###

echo 'P1 fraction 080 - Join'               | tee -a results/P1/080.txt
./process_P1.sh join 080 1.4 300            | tee -a results/P1/080.txt
echo -en '\n'

echo 'P1 fraction 080 - SIMA'               | tee -a results/P1/080.txt
./process_P1.sh sima 080 1.6 250            | tee -a results/P1/080.txt
echo -en '\n'

echo 'P1 fraction 080 - MW'                 | tee -a results/P1/080.txt
./process_P1.sh mw 080 1.5 285              | tee -a results/P1/080.txt
echo -en '\n'

echo 'P1 fraction 080 - MWG'                | tee -a results/P1/080.txt
./process_P1_greedy.sh 080 1.5 220 6 0.5    | tee -a results/P1/080.txt
echo -en '\n'

echo 'P1 fraction 080 - MWM'                | tee -a results/P1/080.txt
./process_P1_mixture.sh 080 1.5 215 5 0.2   | tee -a results/P1/080.txt
echo -en '\n'

### P1 fraction 100 ###

echo 'P1 fraction 100 - Join'               | tee -a results/P1/100.txt
./process_P1.sh join 100 1.6 145            | tee -a results/P1/100.txt
echo -en '\n'

echo 'P1 fraction 100 - SIMA'               | tee -a results/P1/100.txt
./process_P1.sh sima 100 1.5 140            | tee -a results/P1/100.txt
echo -en '\n'

echo 'P1 fraction 100 - MW'                 | tee -a results/P1/100.txt
./process_P1.sh mw 100 2.0 220              | tee -a results/P1/100.txt
echo -en '\n'

echo 'P1 fraction 100 - MWG'                | tee -a results/P1/100.txt
./process_P1_greedy.sh 100 1.4 220 3 0.3    | tee -a results/P1/100.txt
echo -en '\n'

echo 'P1 fraction 100 - MWM'                | tee -a results/P1/100.txt
./process_P1_mixture.sh 100 1.4 75 5 0.1    | tee -a results/P1/100.txt
echo -en '\n'
