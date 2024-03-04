#!/bin/bash
# Fetch code from GitHub
git clone https://github.com/sach990p/new-web-01.git
cd new-web-01

# Build Docker image
sudo docker build -t sach990p/siya:1.0 .

# Log in to Docker Hub
echo "DOCKER_HUB_CREDENTIALS_ID"
read -s $password1
echo $password | docker login --username sach990p --password-stdin

# Push image to Docker Hub
sudo docker push sach990p/siya:1.0
