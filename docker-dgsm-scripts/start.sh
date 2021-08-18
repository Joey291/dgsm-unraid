#!/bin/bash
usermod -u ${UID} ${USER}
usermod -g ${GID} ${USER}
umask ${UMASK}

chown -R root:${GID} /opt/scripts
chmod -R 750 /opt/scripts
chown -R ${UID}:${GID} ${DATA_DIR}

su ${USER} -c "/opt/scripts/start-bot.sh"