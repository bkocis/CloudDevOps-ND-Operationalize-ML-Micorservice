#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository


# tag image 
docker tag mlapp:latest 643112058200.dkr.ecr.eu-central-1.amazonaws.com/mlapp:latest

# push image to AWS repository
docker push 643112058200.dkr.ecr.eu-central-1.amazonaws.com/mlapp:latest
