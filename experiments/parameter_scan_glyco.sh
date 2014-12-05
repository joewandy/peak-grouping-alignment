#!/bin/bash

# run MW, SIMA and Join
./run_glyco_tools.sh

# run MWG, will take a long time since a lot of parameters to vary
./run_glyco_mwg.sh

# run MWM, we can either reuse previous clustering results or redo the clustering from scratch
# see details in process_glyco_mixture.sh
./run_glyco_mwm.sh

