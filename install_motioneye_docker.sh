#!/bin/bash

MOTIONEYE_FOLDER=$(pwd)/motioneye

mkdir -p MOTIONEYE_FOLDER

docker build --tag motioneye --file Dockerfile
