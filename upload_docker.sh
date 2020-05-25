#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="2002714/app"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
#docker tag local-image:tagname new-repo:tagname
# REPO has to be created in Docker
# Tagname is basically a description that you want to give
docker tag app:latest 2002714/udacityproject:latest
# Step 3:
# Push image to a docker repository
docker push 2002714/udacityproject:latest
