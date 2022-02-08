#!/bin/bash
webhook=webhookurl
while true; do
    ./csgoserver m
    ./csgoserver u | grep 'Update available' 
    if [ $? == 0 ]; then
            echo "Update Downloaded.. restarting servers..." 
            ./webhook.sh --webhook-url="$webhook" --title "A Server update has been released!" --description "A Dedicated Server update has been detected\n the servers will now restart to apply the update." --color "16711680" --timestamp
    else
            echo "Server is up to date." 
    fi
   sleep 120
done




