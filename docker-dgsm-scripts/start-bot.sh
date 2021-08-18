#!/bin/bash

if [ ! -f /dgsm-docker/configs/servers.json ]; then
    echo "Servers Config not found!"
    cp /dgsm-docker/config-default/servers.json /dgsm-docker/configs/
else 
    echo "Server Config found!"
fi

if [ ! -f /dgsm-docker/configs/settings.json ]; then
    echo "Settings Config not found!"
    cp /dgsm-docker/config-default/settings.json /dgsm-docker/configs/
    chown -R ${UID}:${GID} /dgsm-docker/configs/
    echo "Default Configs created. Please go to your App Folder and type in your BOT Token for Discord"
    exit 0;
else
    echo "Settings Config found!"
fi 



python3 /dgsm-docker/bot.py