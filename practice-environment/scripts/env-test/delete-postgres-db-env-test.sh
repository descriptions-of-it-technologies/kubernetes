#!/bin/bash

# =====================================================================================================================================================================================================
# ======================================================================================= Postgres DB ENV TEST ========================================================================================
# =====================================================================================================================================================================================================

echo "================================================================================================================== Deleting postgres service..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-test/postgres-service.yaml

echo "================================================================================================================== Deleting postgres deployment..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-test/postgres-deployment.yaml

echo "================================================================================================================== Deleting postgres configmap..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-test/postgres-configmap.yaml

echo "================================================================================================================== Deleting postgres pv claim..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-test/postgres-pv-claim.yaml

echo "================================================================================================================== Deleting postgres pv volume..."
kubectl delete -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/postgresDB-env-test/postgres-pv-volum.yaml






