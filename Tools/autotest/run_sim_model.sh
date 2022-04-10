#!/bin/bash

PROJECT_FOLDER=/home/felix/Documents/Projects/repos/ardupilot
HOME_COORDS="-35.363261,149.165230,584,353"
INPUT_UDP_PORT="127.0.0.1:5502"
OUTPUT_UDP_PORT="127.0.0.1:5501"
FORWARD_UDP_PORT="127.0.0.1:5503"
FRAME="X"

echo "==================PHYSICS=MODE=================="
echo 
echo "HOME COORDINATES: " $HOME_COORDS
echo "INPUT UDP PORT  : " $INPUT_UDP_PORT
echo "OUTPUT UDP PORT : " $OUTPUT_UDP_PORT
echo "FORWARD UDP PORT: " $FORWARD_UDP_PORT
echo
echo "sim_model> Starting simulation model..."

python $PROJECT_FOLDER/Tools/autotest/pysim/sim_multicopter.py \
    --home=$HOME_COORDS \
    --simin=$INPUT_UDP_PORT \
    --simout=$OUTPUT_UDP_PORT \
    --fgout=$FORWARD_UDP_PORT \
    --frame=$FRAME 
