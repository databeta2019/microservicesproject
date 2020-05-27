#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="2002714/udacityproject"

# Step 2
# Run the Docker Hub container with kubernetes
docker login
kubectl create deployment app-deployed2 --image=$dockerpath:latest


# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/app-deployed2 8000:80

