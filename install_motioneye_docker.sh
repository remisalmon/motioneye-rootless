#!/bin/bash

MOTIONEYE_FOLDER=$(pwd)/docker

mkdir -p MOTIONEYE_FOLDER

docker build --tag motioneye --file Dockerfile
