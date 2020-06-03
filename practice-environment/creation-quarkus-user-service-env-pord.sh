#!/bin/bash

# =====================================================================================================================================================================================================
# ================================================================================== quarkus-user-service ENV PROD ====================================================================================
# =====================================================================================================================================================================================================

echo "================================================================================================================== Creating deployment..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/quarkus-user-service-prod/quarkus-user-service-deployment.yaml

echo "================================================================================================================== Creating service..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/quarkus-user-service-prod/quarkus-user-service-service.yaml
