#!/usr/bin/env sh

set -x
python flaskapi.py &
sleep 1
echo $! > .pidfile
set +x
