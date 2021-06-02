#!/usr/bin/env bash

set -eu

xhost +

sudo docker run \
    -it \
    --rm \
    --net=host \
    --runtime nvidia \
    -e DISPLAY=$DISPLAY \
    --device /dev/video0 \
    -v /tmp/argus_socket:/tmp/argus_socket \
    -v /tmp/.X11-unix/:/tmp/.X11-unix \
    -v ${HOME}/Downloads:/output \
    deepstream-test1-cam:1