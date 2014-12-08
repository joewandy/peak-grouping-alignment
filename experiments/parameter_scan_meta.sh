#!/bin/bash

rm -rf results/meta

# do parameter scans using MW, SIMA and Join
./parameter_scan_meta_tools.sh

# do parameter scans using MWG (RT), will take a long time since a lot of parameters to vary
./parameter_scan_meta_mwg_rt.sh

# do parameter scans using MWG (RT+peakshape correlations), will take a long time since a lot of parameters to vary
./parameter_scan_meta_mwg_ps.sh

# do parameter scans using MWM, we can either reuse previous clustering results or redo the clustering from scratch
# see details in process_meta_mixture.sh
./parameter_scan_meta_mwm.sh

