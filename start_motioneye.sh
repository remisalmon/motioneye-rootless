#!/bin/bash

MOTIONEYE_FOLDER=$(pwd)/motioneye

source venv27/bin/activate && meyectl startserver -c motioneye/motioneye.conf 2> motioneye/motioneye.log &

xdg-open 'http://localhost:8765'
