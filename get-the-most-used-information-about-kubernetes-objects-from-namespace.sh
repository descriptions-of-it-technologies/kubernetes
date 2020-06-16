#!/bin/bash

kubernetesObjects=(
  pods
  replicasets
  deployments
  services
  ingress
  serviceaccounts
  configmaps
  secrets
  jobs
  cronjobs
  persistentvolumes
  persistentvolumeclaims
  resourcequotas
  limitranges
  daemonsets
  statefulsets
  quota
  roles
  rolebinding
  networkpolicy
  nodes
  namespaces)

for obj in "${kubernetesObjects[@]}"; do

    echo "<==============================================================================================================> $obj"
    kubectl get $obj --namespace="$1" -o wide
    echo ""
done
