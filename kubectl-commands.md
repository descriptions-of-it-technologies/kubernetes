# Kubectl Commands.





## Contents at a Glance.
* [About.](#about)
* [Documentation.](#documentation)
* [kubectl Cheat Sheet. Official.](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
* [Kubectl Kubernetes CheatSheet.](https://github.com/dennyzhang/cheatsheet-kubernetes-A4)
* [Minikube Commands.](https://github.com/Programming-Training-And-Practice/minikube-main-information/blob/master/minikube-commands.md)
* [Kind Commands.](https://github.com/Programming-Training-And-Practice/kind-main-information/blob/master/kind-commands.md)
* [Helm Commands.](https://github.com/Programming-Training-And-Practice/helm-main-information/blob/master/helm-commands.md)
* [kubectl tools.]()
* [Cluster.](#cluster)
* [Node.](#node)
* [Pod.](#pod)
* [Replicaset.](#replicaset)
* [Deployment.](#deployment)
* [Namespace.](#namespace)
* [Context.](#context)
* [Configmap.](#configmap)
* [Secret.](#secret)
* [Service.](#service)
* [Service Account.](#service-account)
* [Daemonset.](#daemonset)
* [Job.](#job)
* [Cronjob.](#cronjob)
* [Persistent volume.](#persistentvolume)
* [Persistent volume claim.](#persistentvolumeclaim)
* [Ingress.](#ingress)
* [Statefulset.](#statefulset)
* [General.](#general)
* [kubectl run](#kubectl-run)
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





## General. 

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl                                                                                                            |                                                                         |
| kubectl create -f .                                                                                                |                                                                         |
| kubectl create -f [nameFile] --dry-run                                                                             | This will not create the resource, instead, tell you whether the resource can be created and if your command is right. |
| kubectl describe storageclasses                                                                                    |                                                                         |
| watch kubectl get all -o wide                                                                                      |                                                                         |
| kubectl get all --selector [key]=[value],[key]=[value],[key]=[value]                                               |                                                                         |
| kubectl get clusterrolebindings [roleName]                                                                         |                                                                         |
| kubectl get deploy [nameDeploy] -o yaml > [toFile]                                                                 | This will output the resource definition in YAML format on the screen.  |
| kubectl get apiservices                                                                                                                   |                                                                         |
| kubectl events                                                                                                     | Show events.                                                            |
| kubectl -n  kube-system get pods                                                                                   |                                                                         |
| kubectl --namespace kube-system get pods                                                                           |                                                                         |
| kubectl -n kube-system get pod [namePod] -o yaml > /tmp/myPodConfig.yaml                                           |                                                                         |
| kubeadm reset                                                                                                      |                                                                         |
| kubeadm token create --print-join-command                                                                          |                                                                         |
| kubeadm join [ipAddressAndPort] --token [token] --discovery-token-ca-cert-hash [value]                             |                                                                         |
| -o json                                                                                                            | Output a JSON formatted API object.                                     |
| -o name                                                                                                            | Print only the resource name and nothing else.                          |
| -o wide                                                                                                            | Output in the plain-text format with any additional information.        |
| -o yaml                                                                                                            | Output a YAML formatted API object.                                     |
| kubectl api-resources                                                                                              |                                                                         |
|                                                                                                                    |                                                                         |





## Cluster. 

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl cluster-info                                                                                               | Show information about K8s Cluster.                                     |
|                                                                                                                    |                                                                         |





## Node.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl describe node                                                                                              |                                                                         |
| kubectl describe node [nodeName] | grep Taint                                                                      |                                                                         |
| kubectl get nodes                                                                                                  | Show all servers (nods) K8s Cluster.                                    |
| kubectl get nodes -o wide                                                                                          |                                                                         |
| kubectl get node [nameNode] --show-labels                                                                          |                                                                         |
| kubectl get nodes --show-labels                                                                                    |                                                                         |
| kubectl get nodes -l [key]=[value]                                                                                 | Get nodes whit this label.                                              |
| kubectl explain node                                                                                               |                                                                         |
| kubectl edit node                                                                                                  |                                                                         |
| kubectl label node [nodeName] [labelKey]=[labelValue]                                                              | Set label node.                                                         |
| kubectl label node [nameNode] [labelKey]-                                                                          | Remove label node.                                                      |
| kubectl delete node [nameNode]                                                                                     |                                                                         |
| kubectl drain [nameNode] --ignore-daemonsets                                                                       |                                                                         |
| kubectl taint node [nodeName] [key]=[value]:[taint-effect]                                                         |                                                                         |
| kubectl taint node [nameNode] [key]/[value]:[taint-effect]-                                                        | Remove the taint on node.                                               |
| kubectl taint node [nameNode] node-role.kubernetes.io/master:NoSchedule                                            | Remove the taint on master.                                             |
|                                                                                                                    |                                                                         |

`kubectl describe node kubemaster | grep Taint`





## Pod.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl describe pod [podName]                                                                                     |                                                                         |
| kubectl describe -f [nameConfig].yaml                                                                                 |                                                                         |
| kubectl run --generator=run-pod/v1 [namePod] --image=[nameImage] --restart=Never                                   | Create Pod.                                                             |
| kubectl run --generator=run-pod/v1 [namePod] --image=[nameImage]  --dry-run -o yaml                                | Generate POD Manifest YAML file (-o yaml). Don't create it(--dry-run)   |
| kubectl run --generator=run-pod/v1 [namePod] --image=[nameImage]  --dry-run -o yaml > [nameConf].yaml              | Generate POD Manifest YAML file (-o yaml). Don't create it(--dry-run)   |
| kubectl logs [podName]                                                                                             | Show log of pod.                                                        |
| kubectl get -f [nameConfig].yaml                                                                                   |                                                                         |
| kubectl get pods                                                                                                   |                                                                         |
| kubectl get pods --namespaces=[namespace]                                                                          |                                                                         |
| kubectl get pods --all-namespaces                                                                                  |                                                                         |
| kubectl get pods --selector [key]=[value]                                                                          |                                                                         |
| kubectl get pod -l [keyLabel]                                                                                      | Get pods by label name.                                                 |
| kubectl get pods -l '![keyValue]'                                                                                  | To list all pods those that don’t have the 'keyValue' label.            |
| kubectl get pod -L [keyLabel],[keyLabel]                                                                           |                                                                         |
| kubectl get pods --show-labels                                                                                     |                                                                         |
| kubectl get pod [namePod] --show-labels                                                                            |                                                                         |
| kubectl get pod [namePod] -o yaml                                                                                  |                                                                         |
| kubectl get pod [namePod] -o yaml > [nameFile].yaml                                                                |                                                                         |
| kubectl get pod [namePod] -o json                                                                                  |                                                                         |
| kubectl explain pods                                                                                               |                                                                         |
| kubectl edit pods                                                                                                  |                                                                         |
| kubectl edit pods [namePod]                                                                                        |                                                                         |
| kubectl exec [namePod] -- [command]                                                                                | Execute command in pod.                                                 |
| kubectl exec [namePod] -- ls                                                                                       |                                                                         |
| kubectl exec [namePod] -- sh                                                                                       |                                                                         |
| kubectl exec -it [namePod] -- [command]                                                                            | Execute interactive command in pod.                                     |
| kubectl exec -it [namePod] -c [containerName] -- [command]                                                         |                                                                         |
| kubectl exec [namePod] whoami                                                                                      |                                                                         |
| kubectl exec -it [namePod] -- date -s '19 APR 2012 11:14:00'                                                       |                                                                         |
| kubectl exec -it [namePod] cat /log/app.log                                                                        |                                                                         |
| kubectl expose pod [namePod] --port=[numberOfPort] --name [nameService] --dry-run -o yaml                          | Create a Service of type ClusterIP to expose pod on port.               |
| kubectl label pod [podName] [key]=[value]                                                                          | Attach label.                                                           |
| kubectl label pod [podName] [key]=[value] --overwrite                                                              |                                                                         |
| kubectl label pod [podName] [key]-                                                                                 | Delete label.                                                           |
| kubectl port-forward pod/[podName] [localMachinePort]:[containerPort]                                              |                                                                         | 
| kubectl port-forward [podName] [localMachinePort]:[podPort]                                                        |                                                                         | 
| kubectl logs [namePod]                                                                                             |                                                                         |
| kubectl logs [namePod] -c [containerName]                                                                          |                                                                         |
| kubectl delete pod [podName]                                                                                       |                                                                         |
| kubectl delete pods --all                                                                                          |                                                                         |
| kubectl delete -f [configFile]                                                                                     |                                                                         |
|                                                                                                                    |                                                                         |
 
 
 
 
 
## ReplicaSet.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| rs                                                                                                                 |                                                                         | 
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl replace -f [configFile]                                                                                    |                                                                         |
| kubectl scale  --replicas=[numberOfReplicas] -f [configFile]                                                       |                                                                         |
| kubectl scale  --replicas=[numberOfReplicas] replicaset [nameReplicaSet]                                           |                                                                         |
| kubectl get replicaset                                                                                             |                                                                         |
| kubectl get replicaset [nameReplicaSet]                                                                            |                                                                         |
| kubectl get replicaset [nameReplicaSet] -o yaml                                                                    |                                                                         |
| kubectl get replicaset [nameReplicaSet] -o json                                                                    |                                                                         |
| kubectl get rs --all-namespaces                                                                                    |                                                                         |
| kubectl edit rs [nameReplicaSet]                                                                                   |                                                                         |
| kubectl describe replicasets [nameReplicaSet]                                                                      |                                                                         |
| kubectl describe rs [nameReplicaSet]                                                                               |                                                                         |
| kubectl explain replicasets                                                                                        |                                                                         |
| kubectl delete replicasets [nameReplicaSet]                                                                        |                                                                         |
| kubectl delete -f [configFile]                                                                                     |                                                                         |
|                                                                                                                    |                                                                         | 



 

## Deployment. 

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create deployment [deploymentName] --image=[imageName:version]                                             |                                                                         |
| kubectl create -f [configFile]                                                                                     | Create deployment by config file.                                       |
| kubectl create -f [configFile] --record                                                                            |                                                                         |
| kubectl create deployment --image=[nameImage] [nameDeployment]                                                     | Create a deployment.                                                    |
| kubectl create -f [configFile] --namespace=[name]                                                                  |                                                                         |
| kubectl create deployment --image=[nameImage] [nameDeployment] --dry-run -o yaml                                   | Generate Deployment YAML file (-o yaml). Don't create it(--dry-run)     |
| kubectl create deployment --image=[nameImage] [nameDeployment] --dry-run -o yaml > [fileName].yaml                 | Save it to a file - (If you need to modify or add some other details)   |
| kubectl apply -f [configFile]                                                                                      | Update deployment by config file.                                       |
| kubectl edit deployment [deploymentName]                                                                           |                                                                         |
| kubectl edit deployment [deploymentName] --record                                                                  |                                                                         |
| kubectl set image deployment [deploymentName] [imageName]=[newVersionImage]                                        | Update image of deployment by kubectl command. But not be updated image in config file. |
| kubectl set image deployment [deploymentName] [imageName]=[newVersionImage] --record                               |                                                                         |
| kubectl describe deployment [deploymentName]                                                                       |                                                                         |
| kubectl describe deployment [deploymentName] --revision=[numberRevision]                                           |                                                                         |
| kubectl rollout pause deployment [deploymentName]                                                                  | Pause updating deployment.                                              |
| kubectl rollout resume deployment [deploymentName]                                                                 | Resume updating deployment.                                             |
| kubectl rollout status deployment [deploymentName]                                                                 |                                                                         |
| kubectl rollout history deployment [deploymentName]                                                                |                                                                         |
| kubectl rollout history deployment [deploymentName] --revision=[numberRevision]                                    |                                                                         |
| kubectl rollout undo deployment [deploymentName]                                                                   | Rollout to previous version.                                            |
| kubectl rollout undo deployment [deploymentName] --to-revision=[revisionNumber]                                    | Rollout to specific number of revision.                                 |
| kubectl annotate deployment [deploymentName] kubernetes.io/change-cause="Update message..."                        |                                                                         |
| kubectl describe deployment                                                                                        |                                                                         |
| kubectl get deployment                                                                                             |                                                                         |
| kubectl get deployment --all-namespaces                                                                            |                                                                         |
| kubectl get deploy [nameDeploy] -o yaml                                                                            |                                                                         |
| kubectl get deploy [nameDeploy] -o json                                                                            |                                                                         |
| kubectl get deploy [nameDeploy] -o yaml > [toFile]                                                                 | Get configuration of deployment. Example to file - /tmp/deployment.yaml |
| kubectl get deployment --all-namespaces                                                                            |                                                                         |
| kubectl explain deployment                                                                                         |                                                                         |
| kubectl scale deployment                                                                                           |                                                                         |
| kubectl scale deploy [nameDeployment] --replicas [numberOfReplicas]                                                |                                                                         |
| kubectl port-forward deployment/[deploymentName] [localMachinePort]:[containerPort]                                |                                                                         |
| kubectl expose deployment [nameDeployment] --type NodePort --port [numberOfPort]                                   |                                                                         |
| kubectl expose deployment [nameDep] --target-port=[port] --port [port] --type=LoadBalancer --namespace=[namespace] |                                                                         |
| kubectl expose deployment [nameDeployment] -n [namespace] --type=NodePort --port=[port] --target-port=[port] --name=[name] --dry-run -o yaml > [nameFile.yaml].yaml     |                    |
| kubectl expose deployment [nameDeployment] -n [namespace] --type=NodePort --port=[port] --target-port=[port] --name=[name]     |                                                             |
| kubectl delete deployment                                                                                          |                                                                         |
| kubectl delete deploy [nameDeployment]                                                                             | Delete deployment by name.                                              |
| kubectl delete -f [configFile]                                                                                     | Delete deployment by config file.                                       |
|                                                                                                                    |                                                                         |





## Namespace.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| ns                                                                                                                 |                                                                         |
| kubectl describe namespace                                                                                         |                                                                         |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl create namespace [nameNamespace]                                                                           |                                                                         |
| kubectl create namespace [name] --dry-run=client -o yaml                                                           |                                                                         |
| kubectl get namespaces                                                                                             |                                                                         |
| kubectl get ns                                                                                                     |                                                                         |
| kubectl get all --all-namespaces                                                                                   |                                                                         |
| kubectl -n kube-system get all                                                                                     |                                                                         |
| kubectl explain ns                                                                                                 |                                                                         |
| kubectl edit namespace                                                                                             |                                                                         |
| kubectl delete -f [configFile]                                                                                     |                                                                         |
| kubectl delete namespace                                                                                           |                                                                         |
|                                                                                                                    |                                                                         |





## Context.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl config current-context                                                                                     |                                                                         |
| kubectl config set-context [contextName] --namespace=[namespace] --user=[userName] --cluster=[clusterName]         |                                                                         |
| kubectl config set-context [contextName] --cluster=[clusterName] --user=[userName]                                 |                                                                         |
| kubectl config get-contexts                                                                                        |                                                                         |
| kubectl config use-context [contextName]                                                                           |                                                                         |
| kubectl config delete-context                                                                                      |                                                                         |
|                                                                                                                    |                                                                         | 





## ResourceQuota.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl describe quota [quotaName] -n [namespace]                                                                  |                                                                         |
|                                                                                                                    |                                                                         |





## LimitRange.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl describe limitrange [quotaName] -n [namespace]                                                             |                                                                         |
|                                                                                                                    |                                                                         |





## Configmap.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl create configmap [configmapName] --from-literal=[key]=[value] --from-literal=[key]=[value]                 |                                                                         |
| kubectl create configmap [configmapName] --from-file=[path]                                                        |                                                                         |
| kubectl create configmap [configmapName] --from-file=<my-key-name>=<path-to-file>                                  |                                                                         |
| kubectl create configmap [configmapName] --from-env-file=[path]                                                    |                                                                         |
| kubectl apply -f [configmapName]                                                                                   |                                                                         |
| kubectl describe configmap [configmapName]                                                                         |                                                                         |
| kubectl get configmaps                                                                                             |                                                                         |
| kubectl get cm                                                                                                     |                                                                         |
| kubectl get cm [configmapName] -o yaml                                                                             |                                                                         |
| kubectl get configmaps --all-namespaces                                                                            |                                                                         |
| kubectl get -n [namespace] get cm                                                                                  |                                                                         |
| kubectl edit configmap                                                                                             |                                                                         |
| kubectl delete configmap                                                                                           |                                                                         |
|                                                                                                                    |                                                                         |





## Secret.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl create secret generic [secretName] --from-literal=[key]=[value] --from-literal=[key]=[value]               |                                                                         |
| kubectl create secret generic [secretName] --from-file=[path] --from-file=[path]                                   |                                                                         |
| kubectl describe secret [nameSecret]                                                                               |                                                                         |
| kubectl get secrets                                                                                                |                                                                         |
| kubectl get secret [nameSecret]                                                                                    |                                                                         |
| kubectl get secret [nameSecret] -o yaml                                                                            |                                                                         |
| kubectl get secret --all-namespaces                                                                                |                                                                         |
| kubectl delete secret [nameSecret]                                                                                 |                                                                         |
|                                                                                                                    |                                                                         |





## Service Account.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl create serviceaccount [nameServiceAccount]                                                                 |                                                                         |
| kubectl create serviceaccount [nameServiceAccount] --namespace [namespace]                                         |                                                                         |
| kubectl get serviceaccount                                                                                         |                                                                         |
| kubectl get serviceaccount [name]                                                                                  |                                                                         |
| kubectl describe serviceaccount [name]                                                                             |                                                                         |
|                                                                                                                    |                                                                         |





## Roles.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl get roles --namespace [namespace]                                                                          |                                                                         |
|                                                                                                                    |                                                                         |





## Role Bindings.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl get rolebindings --namespace [namespace]                                                                   |                                                                         |
|                                                                                                                    |                                                                         |





## Service.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| svc                                                                                                                |                                                                         |
| kubectl create -f [configFile]                                                                                     | Create service by config file.                                          |
| kubectl create service clusterip redis --tcp=6379:6379 --dry-run -o yaml                                           | This will not use the pods labels as selectors, instead it will assume selectors as app=redis. You cannot pass in selectors as an option. So it does not work very well if your pod has a different label set. So generate the file and modify the selectors before creating the service. |
| kubectl create service nodeport nginx --tcp=80:80 --node-port=30080 --dry-run -o yaml                              |                                                                         |
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





## DaemonSet.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl describe daemonset [nameDaemonset] | less                                                                  |                                                                         |
| kubectl get daemonset -n kube-system                                                                               |                                                                         |
| kubectl get daemonset --all-namespaces                                                                             |                                                                         |
| kubectl delete daemonset [nameDaemonset]                                                                           |                                                                         |
|                                                                                                                    |                                                                         |





## Job.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl describe job [nameJob]                                                                                     |                                                                         |
| kubectl get job --all-namespaces                                                                                   |                                                                         |
| kubectl get jobs                                                                                                   |                                                                         |
| kubectl delete job [nameJob]                                                                                       |                                                                         |
| kubectl delete -f [configFile]                                                                                     |                                                                         |
|                                                                                                                    |                                                                         |





## CronJob.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl create -f [configFile]                                                                                     |                                                                         |
| kubectl describe cronjob [nameCronjob]                                                                             |                                                                         |
| kubectl get cronjob --all-namespaces                                                                               |                                                                         |
| kubectl delete cronjob [nameCronjob]                                                                               |                                                                         |
| kubectl delete -f [configFile]                                                                                     |                                                                         |
|                                                                                                                    |                                                                         |





## PersistentVolume.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| pv                                                                                                                 |                                                                         |
| kubectl create -f [configFle]                                                                                      |                                                                         |
| kubectl describe pv                                                                                                |                                                                         |
| kubectl get pv                                                                                                     |                                                                         |
| kubectl get pv --all-namespaces                                                                                    |                                                                         |
| kubectl edit pv                                                                                                    |                                                                         |
| kubectl delete pv                                                                                                  |                                                                         |
|                                                                                                                    |                                                                         |





## PersistentVolumeClaim.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| pvc                                                                                                                |                                                                         |
| kubectl create -f [configFle]                                                                                      |                                                                         |
| kubectl describe pvc                                                                                               |                                                                         |
| kubectl get pvc                                                                                                    |                                                                         |
| kubectl get pvc --all-namespaces                                                                                   |                                                                         |
| kubectl edit pvc                                                                                                   |                                                                         |
| kubectl delete pvc                                                                                                 |                                                                         |
|                                                                                                                    |                                                                         |





## Ingress.

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl describe ingress                                                                                           |                                                                         |
| kubectl create -f [nameConfig]                                                                                     |                                                                         |
| kubectl get ingress                                                                                                |                                                                         |
| kubectl get ingress --all-namespaces                                                                               |                                                                         |
| kubectl edit ingress                                                                                               |                                                                         |
| kubectl delete ingress                                                                                             |                                                                         |
|                                                                                                                    |                                                                         |





## Statefulset

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





## kubectl run

| Key/Command                                                                                                                                                         | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| kubectl run --generator=run-pod/v1 [namePod] --image=[nameDockerImage] --port=[numberPort]                                                  |                                                                         |
| kubectl run --generator=run-pod/v1 [namePod] --image [nameImage] --replicas [numberOfReplicas]                                                                      |                                                                         |
| kubectl run --generator=run-pod/v1 [namePod] --rm -it --image [nameImage] -- sh                                                                                     |                                                                         |
| kubectl run --generator=run-pod/v1 [namePod] --image=[nameImage]:[version] --limts="cpu=200m,memory=512Mi"                                                          |                                                                         |
| kubectl run --generator=cronjob/v1beta1 [namePod] --image=[nameImage] --dry-run  --schedule="*/1 * * * *" -- /bin/sh -c "date; echo hello from kubernetes cluster"  |                                                                         |
| kubectl run [namePod] --image=[nameImage] --replicas=[numberOfReplicas] --labels [key]=[value] --expose --port=[numberOfPort]                                       |                                                                         |
|                                                                                                                                                                     |                                                                         |





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
| kubectl get nodes                          | Show all the k8s cluster                                                |





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

| Key/Command                                                                 | Description                                                             |
| --------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| kubectl exec -ti                                                            |                                                                         |
| kubectl exec [namePod] whoami                                               |                                                                         |
| kubectl exec -it [namePod] -- date -s '19 APR 2012 11:14:00'                |                                                                         |
| kubectl exec -it [namePod] -- sh                                            |                                                                         |
|                                                                             |                                                                         |





## kubectl explain

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl explain <resource>.<key>           |                                                                         |
|                                            |                                                                         |





## kubectl logs

| Key/Command                                                                           | Description                                                             |
| ------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| kubectl logs [podName]                                                                |                                                                         |
| kubectl logs -f [configFile] [containerName]                                          |                                                                         |
| kubectl logs --since 1h                                                               |                                                                         |
| kubectl logs --since 1m                                                               |                                                                         |
| kubectl logs --since 1s                                                               |                                                                         |
| kubectl logs --since 1h -f [configFile]                                               |                                                                         |
| kubectl logs --since 1m -f [configFile]                                               |                                                                         |
| kubectl logs --since 1s -f [configFile]                                               |                                                                         |
| kubectl logs [podName] -c [containerName]                                             |                                                                         |
|                                                                                       |                                                                         |





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





## kubectl top

| Key/Command                                                                           | Description                                                             |
| ------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| kubectl top node                                                                      |                                                                         |
| kubectl top pod                                                                       |                                                                         |
|                                                                                       |                                                                         |





## Sort this commands.
| Key/Command                                                                           | Description                                                             |
| ------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| kubectl get deployments/ingress-nginx-controller -o yaml -n kube-system               |                                                                         |
|                                                                                       |                                                                         |





## Help.
