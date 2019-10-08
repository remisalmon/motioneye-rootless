#!/bin/bash

VENV_FOLDER=$(pwd)/venv27

MOTIONEYE_FOLDER=$(pwd)/motioneye

source $VENV_FOLDER/bin/activate && meyectl startserver -c $MOTIONEYE_FOLDER/motioneye.conf 2> $MOTIONEYE_FOLDER/motioneye.log &

xdg-open 'http://localhost:8765'
