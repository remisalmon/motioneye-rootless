#!/bin/bash

MOTIONEYE_FOLDER=$(pwd)/docker

docker run --detach --publish 8765:8765 --hostname motionEye --volume $MOTIONEYE_FOLDER:/motioneye --device /dev/video4:/dev/video0 localhost/motioneye:bionic
#docker run --detach --publish 8765:8765 --hostname motionEye --volume $MOTIONEYE_FOLDER:/motioneye:Z --device /dev/video4:/dev/video0 --security-opt label=disable localhost/motioneye:latest

xdg-open 'http://localhost:8765'
