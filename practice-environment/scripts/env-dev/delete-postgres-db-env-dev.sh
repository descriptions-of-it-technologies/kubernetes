#!/bin/bash

# =====================================================================================================================================================================================================
# ======================================================================================= Postgres DB ENV DEV =========================================================================================
# =====================================================================================================================================================================================================

echo "================================================================================================================== Deleting postgres service..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-dev/postgres-service.yaml

echo "================================================================================================================== Deleting postgres deployment..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-dev/postgres-deployment.yaml

echo "================================================================================================================== Deleting postgres configmap..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-dev/postgres-configmap.yaml

echo "================================================================================================================== Deleting postgres pv claim..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-dev/postgres-pv-claim.yaml

echo "================================================================================================================== Deleting postgres pv volume..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-dev/postgres-pv-volum.yaml






