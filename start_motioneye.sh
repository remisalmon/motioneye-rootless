#!/bin/bash

MOTIONEYE_FOLDER=$(pwd)/motioneye

source venv27/bin/activate && meyectl startserver -c $MOTIONEYE_FOLDER/motioneye.conf 2> $MOTIONEYE_FOLDER/motioneye.log &

xdg-open 'http://localhost:8765'
