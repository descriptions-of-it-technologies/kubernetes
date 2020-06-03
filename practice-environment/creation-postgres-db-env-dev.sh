#!/bin/bash

# =====================================================================================================================================================================================================
# ======================================================================================= Postgres DB ENV DEV ========================================================================================
# =====================================================================================================================================================================================================

echo "================================================================================================================== Creating postgres configmap..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-dev/postgres-configmap.yaml

echo "================================================================================================================== Creating postgres pv volume..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-dev/postgres-pv-volum.yaml

echo "================================================================================================================== Creating postgres pv claim..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-dev/postgres-pv-claim.yaml

echo "================================================================================================================== Creating postgres deployment..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-dev/postgres-deployment.yaml

echo "================================================================================================================== Creating postgres service..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-dev/postgres-service.yaml
