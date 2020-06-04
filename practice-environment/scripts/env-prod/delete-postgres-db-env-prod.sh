#!/bin/bash

# =====================================================================================================================================================================================================
# ======================================================================================= Postgres DB ENV PROD ========================================================================================
# =====================================================================================================================================================================================================

echo "================================================================================================================== Deleting postgres service..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-prod/postgres-service.yaml

echo "================================================================================================================== Deleting postgres deployment..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-prod/postgres-deployment.yaml

echo "================================================================================================================== Deleting postgres configmap..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-prod/postgres-configmap.yaml

echo "================================================================================================================== Deleting postgres pv claim..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-prod/postgres-pv-claim.yaml

echo "================================================================================================================== Deleting postgres pv volume..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-prod/postgres-pv-volum.yaml






