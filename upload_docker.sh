#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=aryahemanshu/capstone

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo "$1 $2"
docker login --username $1 --password $2 
docker tag capstone $dockerpath:1

# Step 3:
# Push image to a docker repository
docker push $dockerpath:1
