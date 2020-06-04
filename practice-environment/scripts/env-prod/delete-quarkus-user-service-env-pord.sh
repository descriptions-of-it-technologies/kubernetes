#!/bin/bash

# =====================================================================================================================================================================================================
# ================================================================================== quarkus-user-service ENV PROD ====================================================================================
# =====================================================================================================================================================================================================

echo "================================================================================================================== Deleting service..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/quarkus-user-service-prod/quarkus-user-service-service.yaml

echo "================================================================================================================== Deleting deployment..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/quarkus-user-service-prod/quarkus-user-service-deployment.yaml
