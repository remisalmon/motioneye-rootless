#!/bin/bash

MOTIONEYE_FOLDER=$(pwd)/motioneye

mkdir -p MOTIONEYE_FOLDER

docker build -t motioneye .
