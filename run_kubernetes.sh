#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="udacityproject"

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1
# kubectl create deployment kubernetes-bootcamp --image=$dockerpath:latest
docker login
kubectl create deployment app2 --image=$dockerpath:latest
# kubectl run flaskskearlndemo\ # RUN YOUR DOCKER IMAGE
#     # --generator=run-pod/v1\
#     --image=udacityproject\
#     --port=80 --labels app=flaskskearlndemo
# Step 3:
# List kubernetes pods
# kubectl get deployments
kubectl get deployments
kubectl get pods
# Step 4:
# Forward the container port to a host
#kubectl port-forward deployment/prediction-as-a-pod 8000:80
kubectl port-forward app2 8000:80
