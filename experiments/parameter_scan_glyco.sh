#!/bin/bash

rm -rf results/glyco

# do parameter scans using MW, SIMA and Join
./parameter_scan_glyco_tools.sh

# do parameter scans using MWG, will take a long time since a lot of parameters to vary
./parameter_scan_glyco_mwg.sh

# do parameter scans using MWM, we can either reuse previous clustering results or redo the clustering from scratch
# see details in process_glyco_mixture.sh
./parameter_scan_glyco_mwm.sh

