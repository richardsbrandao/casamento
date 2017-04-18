#!/bin/bash

while true; do
    if ! sudo fuser -v 80/tcp
    then
        rails s -b 0.0.0.0 -p 80 > log/production.log
    fi

    sleep 2
done