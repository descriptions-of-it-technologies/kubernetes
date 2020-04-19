# Kubernetes Commands.





## Contents at a Glance.
* [About.](#about)
* [Documentation.](#documentation)
* [kubectl Cheat Sheet. Official.](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
* [Kubectl Kubernetes CheatSheet.](https://github.com/dennyzhang/cheatsheet-kubernetes-A4)
* [Minikube Commands.](minikube-commands.md)
* [kubectl tools.]()
* [cluster](#cluster)
* [node](#node)
* [deployment](#deployment)
* [pod](#pod)
* [service](#service)
* [replicaset](#replicaset)
* [namespace](#namespace)
* [configmap](#configmap)
* [secrets](#secrets)
* [context](#context)
* [daemonset](#daemonset)
* [job](#job)
* [cronjob](#cronjob)
* [ingress](#ingress)
* [statefulset](#statefulset)
* [pvc](#pvc)
* [General.](#general)
* [kubectl create](#kubectl-create)
* [kubectl apply](#kubectl-apply)
* [kubectl config](#kubectl-config)
* [kubectl cp](#kubectl-cp)
* [kubectl delete](#kubectl-delete)
* [kubectl exec](#kubectl-exec)
* [kubectl explain](#kubectl-explain)
* [kubectl get](#kubectl-get)
* [kubectl logs](#kubectl-logs)
* [kubectl port-forward](#kubectl-port-forward)
* [kubectl rollout](#kubectl-rollout)
* [kubectl version](#kubectl-version)
* [Help.](#help)





## About.





## Documentation.





## kubectl tools.
* [Krew](https://krew.sigs.k8s.io/)
* [stern]()
* [kubectx]()
* [kubens]()





## General. 

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl                                                                                                            |                                                                         |
| kubectl -n kube-system get all                                                                                     |                                                                         |
| kubectl events                                                                                                     | Show events.                                                            |
| watch kubectl get all -o wide                                                                                      |                                                                         |
| kubectl -n  kube-system get pods                                                                                   |                                                                         |
| kubectl --namespace kube-system get pods                                                                           |                                                                         |
| kubectl -n kube-system get pod [namePod] -o yaml > /tmp/myPodConfig.yaml                                           |                                                                         |
|                                                                                                                    |                                                                         |




## cluster 

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl cluster-info                                                                                               | Show information about K8s Cluster.                                     |
|                                                                                                                    |                                                                         |





## node

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl describe node                                                                                              |                                                                         |
| kubectl get nodes                                                                                                  | Show all servers (nods) K8s Cluster.                                    |
| kubectl get nodes -o wide                                                                                          |                                                                         |
| kubectl get node [nameNode] --show-labels                                                                          |                                                                         |
| kubectl get nodes -l [label]                                                                                       | Get nodes whit this label.v                                             |
| kubectl explain node                                                                                               |                                                                         |
| kubectl edit node                                                                                                  |                                                                         |
| kubectl label node [nodeName] [labelName]                                                                          |                                                                         |
| kubectl delete node                                                                                                |                                                                         |
|                                                                                                                    |                                                                         |





## deployment 

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create deployment [deploymentName] --image=[imageName:version]                                             |                                                                         |
| kubectl create -f [configFile]                                                                                     | Create deployment by config file.                                       |
| kubectl describe deployment                                                                                        |                                                                         |
| kubectl get deployment                                                                                             |                                                                         |
| kubectl get deployment --all-namespaces                                                                            |                                                                         |
| kubectl get deploy [nameDeploy] -o yaml > [toFile]                                                                 | Get configuration of deployment. Example to file - /tmp/deployment.yaml |
| kubectl explain deployment                                                                                         |                                                                         |
| kubectl scale deployment                                                                                           |                                                                         |
| kubectl scale deploy [nameDeployment] --replicas [numberOfReplicas]                                                |                                                                         |
| kubectl edit deployment                                                                                            |                                                                         |
| kubectl port-forward deployment/[deploymentName] [localMachinePort]:[containerPort]                                |                                                                         |
| kubectl expose deployment [nameDeployment] --type NodePort --port [numberOfPort]                                   |                                                                         |
| kubectl delete deployment                                                                                          |                                                                         |
| kubectl delete deploy [nameDeployment]                                                                             | Delete deployment by name.                                              |
| kubectl delete -f [configFile]                                                                                     | Delete deployment by config file.                                       |
| kubectl rollout status deployment                                                                                  |                                                                         |
|                                                                                                                    |                                                                         |





## pod

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl describe pod [podName]                                                                                     |                                                                         |
| kubectl run [namePod] -- generator=run-pod/v1 --image=[nameDockerImage] --port=[numberPort]                        |                                                                         |
| kubectl run [namePod] --image [nameImage] --replicas [numberOfReplicas]                                            |                                                                         |
| kubectl run [namePod] --rm -it --image [nameImage] -- sh                                                           |                                                                         |
| kubectl logs [podName]                                                                                             | Show log of pod.                                                        |
| kubectl get pods                                                                                                   |                                                                         |
| kubectl get pods --namespaces=[namespace]                                                                          |                                                                         |
| kubectl get pods --all-namespaces                                                                                  |                                                                         |
| kubectl get pods -l [labelName]                                                                                    | Get pods by label name.                                                 |
| kubectl explain pods                                                                                               |                                                                         |
| kubectl edit pods                                                                                                  |                                                                         |
| kubectl edit pods [namePod]                                                                                        |                                                                         |
| kubectl exec [namePod] [command]                                                                                   | Execute command in pod.                                                 |
| kubectl exec -it [namePod] [command]                                                                               | Execute interactive command in pod.                                     |
| kubectl port-forward pod/[podName] [localMachinePort]:[containerPort]                                              |                                                                         | 
| kubectl port-forward [podName] [localMachinePort]:[containerPort]                                                  |                                                                         | 
| kubectl delete pod [podName]                                                                                       |                                                                         |
| kubectl delete pods --all                                                                                          |                                                                         |
| kubectl delete -f [configFile]                                                                                     |                                                                         |
|                                                                                                                    |                                                                         |
 
 
 
 

## service

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     | Create service by config file.                                          |
| kubectl describe svc                                                                                               | Describe service.                                                       |
| kubectl get svc                                                                                                    |                                                                         |
| kubectl get svc --all-namespaces                                                                                   |                                                                         |
| kubectl get svc [nameDeploy] -o yaml > [toFile]                                                                    | Get configuration of service. Example to file - /tmp/svc-conf.yaml      |
| kubectl explain svc                                                                                                |                                                                         |
| kubectl edit svc                                                                                                   |                                                                         |
| kubectl port-forward service/[serviceName] [localMachinePort]:[containerPort]                                      |                                                                         |
| kubectl delete svc                                                                                                 | Delete service by name.                                                 |
| kubectl delete -f [configFile]                                                                                     | Delete service by config file.                                          |
|                                                                                                                    |                                                                         |





## replicaset

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl describe replicasets [nameReplicaset]                                                                      |                                                                         |
| kubectl explain replicasets                                                                                        |                                                                         |
| kubectl delete replicasets [nameReplicaset]                                                                        |                                                                         |
| kubectl delete -f [configFile]                                                                                     |                                                                         |
|                                                                                                                    |                                                                         |





## namespace

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl describe namespace                                                                                         |                                                                         |
| kubectl create namespaces [nameNamespace]                                                                          |                                                                         |
| kubectl get namespaces                                                                                             |                                                                         |
| kubectl get ns                                                                                                     |                                                                         |
| kubectl get all --all-namespaces                                                                                   |                                                                         |
| kubectl explain ns                                                                                                 |                                                                         |
| kubectl edit namespace                                                                                             |                                                                         |
| kubectl delete namespace                                                                                           |                                                                         |
|                                                                                                                    |                                                                         |





## configmap

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl describe configmap                                                                                         |                                                                         |
| kubectl get configmaps                                                                                             |                                                                         |
| kubectl get configmaps --all-namespaces                                                                            |                                                                         |
| kubectl edit configmap                                                                                             |                                                                         |
| kubectl delete configmap                                                                                           |                                                                         |
|                                                                                                                    |                                                                         |





## secrets

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl describe secret                                                                                            |                                                                         |
| kubectl get secret                                                                                                 |                                                                         |
| kubectl get secret --all-namespaces                                                                                |                                                                         |
| kubectl delete secret                                                                                              |                                                                         |
|                                                                                                                    |                                                                         |





## context

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl config current-context                                                                                     |                                                                         |
| kubectl config set-context [contextName] --namespace=[namespace] --user=[userName] --cluster=[clusterName]         |                                                                         |
| kubectl config set-context [contextName] --cluster=[clusterName] --user=[userName]                                 |                                                                         |
| kubectl config get-contexts                                                                                        |                                                                         |
| kubectl config use-context [contextName]                                                                           |                                                                         |
| kubectl config delete-context                                                                                      |                                                                         |
|                                                                                                                    |                                                                         |





## daemonset

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl describe daemonset [nameDaemonset] | less                                                                  |                                                                         |
| kubectl get daemonset -n kube-system                                                                               |                                                                         |
| kubectl delete daemonset [nameDaemonset]                                                                           |                                                                         |
|                                                                                                                    |                                                                         |





## job

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl describe job [nameJob]                                                                                     |                                                                         |
| kubectl delete job [nameJob]                                                                                       |                                                                         |
| kubectl delete -f [configFile]                                                                                     |                                                                         |
|                                                                                                                    |                                                                         |





## cronjob

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl describe cronjob [nameCronjob]                                                                             |                                                                         |
| kubectl delete cronjob [nameCronjob]                                                                               |                                                                         |
| kubectl delete -f [configFile]                                                                                     |                                                                         |
|                                                                                                                    |                                                                         |





## ingress

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl describe ingress                                                                                           |                                                                         |
| kubectl get ingress                                                                                                |                                                                         |
| kubectl get ingress --all-namespaces                                                                               |                                                                         |
| kubectl edit ingress                                                                                               |                                                                         |
| kubectl delete ingress                                                                                             |                                                                         |
|                                                                                                                    |                                                                         |





## statefulset

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl describe statefulset                                                                                       |                                                                         |
| kubectl get statefulset                                                                                            |                                                                         |
| kubectl get statefulset --all-namespaces                                                                           |                                                                         |
| kubectl edit statefulset                                                                                           |                                                                         |
| kubectl delete statefulset                                                                                         |                                                                         |
| kubectl scale statefulset                                                                                          |                                                                         |
| kubectl rollout status statefulset                                                                                 |                                                                         |
|                                                                                                                    |                                                                         |





## pvc

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl describe pvc                                                                                               |                                                                         |
| kubectl get pvc                                                                                                    |                                                                         |
| kubectl get pvc --all-namespaces                                                                                   |                                                                         |
| kubectl edit pvc                                                                                                   |                                                                         |
| kubectl delete pvc                                                                                                 |                                                                         |
|                                                                                                                    |                                                                         |





## kubectl version

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl version                            | Show version of kubectl client and version of server (cluster).         |
| kubectl version --client                   | Show version of kubectl client.                                         |
| kubectl version --short                    |                                                                         |
|                                            |                                                                         |





## kubectl delete

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl delete                             |                                                                         |
| kubectl delete -f                          |                                                                         |
| kubectl delete -f [nameManifestFile]       |                                                                         |





## kubectl create

| Key/Command                                                                                   | Description                                                             |
| --------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| kubectl create -f manifest.yml                                                                | Create.                                                                 |
|                                                                                               |                                                                         |





## kubectl apply

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl apply -f                           |                                                                         |
| kubectl apply -f manifest.yml              | Create or modify.                                                       |
| kubectl apply -f link                      |                                                                         |
| kubectl apply -f directory/                |                                                                         |
|                                            |                                                                         |





## kubectl get

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl get all                            |                                                                         |
| kubectl get all -o wide                    |                                                                         |
| kubectl get rs                             |                                                                         |
| kubectl get componentstatuses              | Show status of K8s Cluster.                                             |
| kubectl get sc                             |                                                                         |
|                                            |                                                                         |





## kubectl config

| Key/Command                                                                           | Description                                                             |
| ------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| kubectl config set-cluster [clusterName]                                              |                                                                         |
| kubectl config set-credentials [userName]                                             |                                                                         |
| kubectl config view                                                                   |                                                                         |





## kubectl cp

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl cp                                 |                                                                         |
|                                            |                                                                         |





## kubectl exec

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl exec -ti                           |                                                                         |
|                                            |                                                                         |





## kubectl explain

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl explain <resource>.<key>           |                                                                         |
|                                            |                                                                         |





## kubectl logs

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl logs                               |                                                                         |
| kubectl logs --since 1h                    |                                                                         |
| kubectl logs --since 1m                    |                                                                         |
| kubectl logs --since 1s                    |                                                                         |
| kubectl logs -f                            |                                                                         |
| kubectl logs --since 1h -f                 |                                                                         |
| kubectl logs --since 1m -f                 |                                                                         |
| kubectl logs --since 1s -f                 |                                                                         |
|                                            |                                                                         |





## kubectl port-forward

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl port-forward                       |                                                                         | 
|                                            |                                                                         |





## kubectl rollout

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl rollout history                    |                                                                         |
| kubectl rollout undo                       |                                                                         |
|                                            |                                                                         |





## Help.
