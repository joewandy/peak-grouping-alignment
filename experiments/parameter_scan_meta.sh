#!/bin/bash

# run MW, SIMA and Join
./run_meta_tools.sh

# run MWG (RT), will take a long time since a lot of parameters to vary
./run_meta_mwg_rt.sh

# run MWG (RT+peakshape correlations), will take a long time since a lot of parameters to vary
./run_meta_mwg_ps.sh

# run MWM, we can either reuse previous clustering results or redo the clustering from scratch
# see details in process_meta_mixture.sh
./run_meta_mwm.sh

