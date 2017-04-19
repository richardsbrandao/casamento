#!/bin/bash

PORT=$1

while true; do
    STATUS_CODE=`curl -sL -w "%{http_code}\\n" "http://localhost:$PORT" -o /dev/null`

    if [ $STATUS_CODE -ne 200 ]; then
         SECRET_KEY_BASE=$(rake secret) rails s Puma -e production -b 0.0.0.0 -p $PORT > /dev/null
    fi

    sleep 20
done