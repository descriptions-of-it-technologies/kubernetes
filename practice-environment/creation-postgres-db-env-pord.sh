#!/bin/bash

# =====================================================================================================================================================================================================
# ======================================================================================= Postgres DB ENV PROD ========================================================================================
# =====================================================================================================================================================================================================

echo "================================================================================================================== Creating postgres configmap..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-prod/postgres-configmap.yaml

echo "================================================================================================================== Creating postgres pv volume..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-prod/postgres-pv-volum.yaml

echo "================================================================================================================== Creating postgres pv claim..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-prod/postgres-pv-claim.yaml

echo "================================================================================================================== Creating postgres deployment..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-prod/postgres-deployment.yaml

echo "================================================================================================================== Creating postgres service..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-prod/postgres-service.yaml
