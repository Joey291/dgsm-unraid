# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:slim-bullseye

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get upgrade -y && apt-get install -y npm && apt-get install -y jq && \
	rm -rf /var/lib/apt/lists/*

ENV DATA_DIR="/dgsm-docker"
ENV UMASK=000
ENV UID=99
ENV GID=100
ENV USER="discord"
ENV DATA_PERM=770

RUN mkdir $DATA_DIR && \
	useradd -d $DATA_DIR -s /bin/bash $USER && \
	chown -R $USER $DATA_DIR

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt
RUN npm install -g gamedig

WORKDIR /dgsm-docker
COPY . /dgsm-docker

ADD docker-dgsm-scripts /opt/scripts/
RUN chmod -R 770 /opt/scripts/

ENTRYPOINT ["/opt/scripts/start.sh"]