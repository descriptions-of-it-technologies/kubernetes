#!/bin/bash

kubernetesObjects=(
deployments
services
ingresses
pods
nodes
namespaces
replicasets
configmaps
secrets
persistentvolumeclaims
persistentvolumes
serviceaccounts
networkpolicies
roles
rolebindings
jobs
cronjobs
daemonsets
limitranges
statefulsets
resourcequotas
clusterroles
clusterrolebindings
apiservices
csinodes
componentstatuses
customresourcedefinitions
controllerrevisions
certificatesigningrequests
csidrivers
endpoints
events
endpointslices
horizontalpodautoscalers
leases
mutatingwebhookconfigurations
podtemplates
poddisruptionbudgets
priorityclasses
podsecuritypolicies
replicationcontrollers
runtimeclasses
storageclasses
validatingwebhookconfigurations
volumeattachments)

for obj in "${kubernetesObjects[@]}";
do
  echo "<==============================================================================================================> $obj"
  kubectl get "$obj" --namespace="$1" -o wide
  echo ""
done
