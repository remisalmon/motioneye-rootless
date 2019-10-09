#!/bin/bash

MOTIONEYE_FOLDER=$(pwd)/motioneye

rm -rf $MOTIONEYE_FOLDER

mkdir -p $MOTIONEYE_FOLDER

docker build -t motioneye:latest .
