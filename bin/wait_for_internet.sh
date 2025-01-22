#!/bin/bash

check_internet() {
    ping -c 1 -W 2 8.8.8.8 > /dev/null 2>&1
    return $?
}

delay=1
while ! check_internet; do
    sleep $delay
    delay=$((delay*2))
    if (( delay >= 300)); then
        exit 1
    fi
done
