#!/bin/bash

# =====================================================================================================================================================================================================
# ================================================================================ Creation Ingress Controller Nginx ==================================================================================
# =====================================================================================================================================================================================================

echo "================================================================================================================== Creating Namespace ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/namespace-ingress-nginx.yml

echo "================================================================================================================== Creating ServiceAccount ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/serviceAccount-ingress-nginx.yml

echo "================================================================================================================== Creating Configmap ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/configmap-ingress-nginx-controller.yml

echo "================================================================================================================== Creating ClusterRole ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/clusterRole-ingress-nginx.yml

echo "================================================================================================================== Creating ClusterRoleBinding ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/clusterRoleBinding-ingress-nginx.yml

echo "================================================================================================================== Creating Role ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/role-ingress-nginx.yml

echo "================================================================================================================== Creating RoleBinding ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/roleBinding-ingress-nginx.yml

echo "================================================================================================================== Creating Service ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/service-ingress-nginx-controller-admission.yml

echo "================================================================================================================== Creating Service ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/service-ingress-nginx-controller.yml

echo "================================================================================================================== Creating Deployment ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/deployment-ingress-nginx-controller.yml

echo "================================================================================================================== Creating ValidatingWebhookConfiguration ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/validatingWebhookConfiguration-ingress-nginx-admission.yml

echo "================================================================================================================== Creating ClusterRole ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/clusterRole-ingress-nginx-admission.yml

echo "================================================================================================================== Creating ClusterRoleBinding ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/clusterRoleBinding-ingress-nginx-admission.yml

echo "================================================================================================================== Creating Job ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/job-ingress-nginx-admission-create.yml

echo "================================================================================================================== Creating Job ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/job-ingress-nginx-admission-patch.yml

echo "================================================================================================================== Creating Role ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/role-ingress-nginx-admission.yml

echo "================================================================================================================== Creating RoleBinding ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/roleBinding-ingress-nginx-admission.yml

echo "================================================================================================================== Creating ServiceAccount ..."
kubectl create -f /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/practice-environment/ingress-controller/serviceAccount-ingress-nginx-admission.yml
