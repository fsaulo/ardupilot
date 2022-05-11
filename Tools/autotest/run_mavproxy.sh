#!/bin/bash

INPUT_UDP_PORT="127.0.0.1:5502"
OUTPUT1_PORT="udp:127.0.0.1:14550"
OUTPUT2_PORT="udp:127.0.0.1:14551"
MASTER_PORT="tcp:127.0.0.1:5760"
SITL_PORT="127.0.0.1:5501"
PARAMS="Tools/autotest/copter_params.parm"

echo "==================MAVPROXY=================="
echo 
echo "OUTPUT1: " $OUTPUT1_PORT
echo "OUTPUT2: " $OUTPUT2_PORT
echo "MASTER : " $MASTER_PORT
echo "SITL   : " $SITL_PORT
echo
echo "mavproxy> Starting MAVProxy..."
echo

mavproxy.py \
    --out=$OUTPUT1_PORT \
    --out=$OUTPUT2_PORT \
    --master=$MASTER_PORT \
    --sitl=$SITL_PORT \
    --console \
    --mav10 \
    --quadcopter
