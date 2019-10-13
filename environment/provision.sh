#!/bin/bash

# updates the list of packages: what new things can I install?
sudo apt-get update -y

# updates the actual packages: of the existing things, what can I update?
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y
sudo systemctl start nginx -y

# update and install java8
sudo apt update
sudo apt install openjdk-8-jdk -y

# sudo ufw status

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update
sudo apt install jenkins -y

systemctl status jenkins

# sudo ufw allow OpenSSH
sudo ufw allow OpenSSH
sudo ufw enable -y
sudo ufw allow 8080
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
# sudo ufw status
