#!/bin/bash

getNetworkActivity(){
    network_activity=$(Get-NetAdapterStatistics -Name "wlan0" )
    echo "Network Activity: $network_activity"
}

getNetworkActivity