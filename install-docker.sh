#!/bin/bash
   
# mise a jour de la liste des packages disponibles
sudo apt-get update


# apt-transport-https: plugin https pour apt
# ca-certificates: permet au systeme et aux navigateurs de vérifier les certificats ssl
# curl: outil permettant de lancer des requêtes http
# software-properties-common: abstraction autour des depôts apt
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# installation de la clef GPG
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# ajout du repo officiel docker
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"

# mise a jour de la liste des packages disponibles
sudo apt-get update

# installation de docker
sudo apt-get install docker-ce

# installation de docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# ajout de l'utilisateur courrant au groupe docker
sudo groupadd docker
sudo usermod -aG docker pictime
