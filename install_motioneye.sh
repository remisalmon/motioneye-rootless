#!/bin/bash

MOTIONEYE_FOLDER=$(pwd)/motioneye

python2 -m virtualenv venv27

source venv27/bin/activate

pip install --upgrade pip

pip install motioneye

pip uninstall --yes pycurl

export PYCURL_SSL_LIBRARY=openssl

pip install --no-cache-dir pycurl

mkdir -p MOTIONEYE_FOLDER

cat venv27/share/motioneye/extra/motioneye.conf.sample | sed -e "s?/etc/motioneye?$MOTIONEYE_FOLDER?" -e "s?/var/run?$MOTIONEYE_FOLDER?" -e "s?/var/log?$MOTIONEYE_FOLDER?" -e "s?/var/lib/motioneye?$MOTIONEYE_FOLDER?" > $MOTIONEYE_FOLDER/motioneye.conf
