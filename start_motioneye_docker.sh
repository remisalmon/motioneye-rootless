#!/bin/bash

MOTIONEYE_FOLDER=$(pwd)/motioneye

docker run --detach --publish 8765:8765 --hostname motionEye --volume /etc/localtime:/etc/localtime:ro --volume $MOTIONEYE_FOLDER:/motioneye --device /dev/video0:/dev/video0 localhost/motioneye:latest
