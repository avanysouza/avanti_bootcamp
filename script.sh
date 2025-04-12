#!/bin/bash

# Atualização de pacotes e instalação 
sudo apt-get update
sudo apt-get install python3 -y
sudo apt-get install curl git zip -y

# Instalação do docker
sudo apt-get install docker.io -y
sudo systemctl enable --now docker
sudo systemctl start docker

# Instalando o docker-compose
sudo mkdir -p ~/.docker/cli-plugins/
sudo curl -SL https://github.com/docker/compose/releases/download/v2.11.2/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
sudo chmod +x ~/.docker/cli-plugins/docker-compose
cd ~/.docker/cli-plugins/
mv docker-compose /usr/local/bin/

# Instalação do gitla-runner
curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash
sudo apt-get install -y gitlab-runner
sudo usermod -aG docker gitlab-runner
sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
sudo gitlab-runner start

# Comunicação com o gitlab-runner.
sudo gitlab-runner register --non-interactive \
  --url "https://gitlab.com" \
  --registration-token "glrt-bzoxCnA6MTUxOWtoCnQ6Mwp1Omc2NDJ6IU-PQavSjWLULoyrF0J61RA.1j1c3fkt2" \
  --executor "shell" \
  --description "Runner Shell Ubuntu" \
  --tag-list "docker,aws" \
  --run-untagged="true" \
  --locked="false"