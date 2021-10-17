#!/bin/bash

if [ ! -f /dgsm-docker/configs/servers.json ]; then
    echo "Servers Config not found!"
    cp /dgsm-docker/config-default/servers.json /dgsm-docker/configs
else 
    echo "Server Config found!"
fi

if [ ! -f /dgsm-docker/configs/.env ]; then
    echo "Settings Config not found!"
    cp /dgsm-docker/config-default/.env /dgsm-docker/configs
    chown -R ${UID}:${GID} /dgsm-docker/configs/.env
    chown -R ${UID}:${GID} /dgsm-docker/configs/servers.json
    chmod 777 /dgsm-docker/configs/.env
    chmod 777 /dgsm-docker/configs/servers.json
    echo "Default Configs created. Please go to your App Folder and type in your BOT Token for Discord"
    exit 0;
else
    echo "Settings Config found!"
fi 

cp -r /dgsm-docker/configs/.env /dgsm-docker/
cp -r /dgsm-docker/configs/servers.json /dgsm-docker/

python3 /dgsm-docker/bot.py