#!/bin/bash

MOTIONEYE_FOLDER=motioneye

rm -rf $MOTIONEYE_FOLDER

mkdir -p $MOTIONEYE_FOLDER

docker build -t motioneye:latest .
