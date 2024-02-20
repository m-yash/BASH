#!/bin/bash

link="www.google.com"

max_limit=3

continous_fail=0

checkNetwork(){
    ping $link 
}

while true; do 
    if checkNetwork; then   
        echo "$(date): network is up"
        continous_fail=0
    else
        echo "$(date): network is down"
        ((continous_fail++))

        if [ $continous_fail -ge $max_limit ]; then
            echo "$(date): network is down consistently!"
        fi
    fi
    sleep 15
done