# Kubernetes Commands.





## Contents at a Glance.
* [About.](#about)
* [Documentation.](#documentation)
* [Minikube Main Information.](minikube-main-information.md)
* [Minikube Commands.](minikube-commands.md)
* [General.](#general)
* [kubectl apply](#kubectl-apply)
* [kubectl run](#kubectl-run)
* [kubectl config](#kubectl-config)
* [kubectl cp](#kubectl-cp)
* [kubectl cluster-info](#kubectl-cluster-info)
* [kubectl delete](#kubectl-delete)
* [kubectl describe](#kubectl-describe)
* [kubectl edit](#kubectl-edit)
* [kubectl exec](#kubectl-exec)
* [kubectl explain](#kubectl-explain)
* [kubectl get](#kubectl-get)
* [kubectl logs](#kubectl-logs)
* [kubectl port-forward](#kubectl-port-forward)
* [kubectl rollout](#kubectl-rollout)
* [kubectl scale](#kubectl-scale)
* [kubectl version](#kubectl-version)
* [Help.](#help)





## About.





## Documentation.





## General. 

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl                                    |                                                                         |





## kubectl apply

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl apply -f                           |                                                                         |
| kubectl apply -f [nameFile]                | Run pod via manifest file.                                              |





## kubectl run

| Key/Command                                                                                                        | Description                                                             |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl run [namePod] -- generator=run-pod/v1 --image=[nameDockerImage] --port=[numberPort]                        |                                                                         |





## kubectl config

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl config current-context             |
| kubectl config delete-context              |
| kubectl config get-contexts                |
| kubectl config set-context                 |
| kubectl config set-context                 |                                                                         |
| kubectl config use-context                 |                                                                         |





## kubectl cp

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl cp                                 |                                                                         |





## kubectl cluster-info

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl cluster-info                       | Show information about K8s Cluster.                                     |





## kubectl version

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl version                            | Show version of kubectl client and version of server (cluster).         |
| kubectl version --client                   | Show version of kubectl client.                                         |





## kubectl delete

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl delete                             |                                                                         |
| kubectl delete configmap                   |                                                                         |
| kubectl delete deployment                  |                                                                         |
| kubectl delete -f                          |                                                                         |
| kubectl delete -f [nameManifestFile]       |                                                                         |
| kubectl delete ingress                     |                                                                         |
| kubectl delete node                        |                                                                         |
| kubectl delete namespace                   |                                                                         |
| kubectl delete pods [podName]              |                                                                         |
| kubectl delete pvc                         |                                                                         |
| kubectl delete svc                         |                                                                         |
| kubectl delete secret                      |                                                                         |
| kubectl delete statefulset                 |                                                                         |





## kubectl describe

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl describe ingress                   |                                                                         |
| kubectl describe node                      |                                                                         |
| kubectl describe namespace                 |                                                                         |
| kubectl describe pods [podName]            |                                                                         |
| kubectl describe pvc                       |                                                                         |
| kubectl describe svc                       |                                                                         |
| kubectl describe secret                    |                                                                         |
| kubectl describe statefulset               |                                                                         |
| kubectl describe configmap                 |                                                                         |
| kubectl describe deployment                |                                                                         |





## kubectl edit

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl edit configmap                     |                                                                         |
| kubectl edit deployment                    |                                                                         |
| kubectl edit ingress                       |                                                                         |
| kubectl edit node                          |                                                                         |
| kubectl edit namespace                     |                                                                         |
| kubectl edit pods                          |                                                                         |
| kubectl edit pvc                           |                                                                         |
| kubectl edit svc                           |                                                                         |
| kubectl edit statefulset                   |                                                                         |





## kubectl exec

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl exec -ti                           |                                                                         |
| kubectl exec [namePod] [command]           | Execute command in pod.                                                 |
| kubectl exec -it [namePod] [command]       | Execute interactive command in pod.                                     |





## kubectl explain

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl explain <resource>.<key>           |                                                                         |





## kubectl get

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl get all                            |                                                                         |
| kubectl get all --all-namespaces           |                                                                         |
| kubectl get configmaps                     |                                                                         |
| kubectl get configmaps --all-namespaces    |                                                                         |
| kubectl get deployment                     |                                                                         |
| kubectl get deployment --all-namespaces    |                                                                         |
| kubectl get ingress                        |                                                                         |
| kubectl get ingress --all-namespaces       |                                                                         |
| kubectl get nodes                          | Show all servers (nods) K8s Cluster.                                    |
| kubectl get namespaces                     |                                                                         |
| kubectl get pods                           |                                                                         |
| kubectl get pods --all-namespaces          |                                                                         |
| kubectl get pvc                            |                                                                         |
| kubectl get pvc --all-namespaces           |                                                                         |
| kubectl get rs                             |                                                                         |
| kubectl get svc                            |                                                                         |
| kubectl get svc --all-namespaces           |                                                                         |
| kubectl get secret                         |                                                                         |
| kubectl get secret --all-namespaces        |                                                                         |
| kubectl get statefulset                    |                                                                         |
| kubectl get statefulset --all-namespaces   |                                                                         |
| kubectl get componentstatuses              | Show status of K8s Cluster.                                             |




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
| kubectl logs [podName]                     | Show log of pod.                                                        |





## kubectl port-forward

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl port-forward                       |                                                                         | 
| kubectl port-forward [podName] 7788:80     |                                                                         | 





## kubectl rollout

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl rollout history                    |                                                                         |
| kubectl rollout status deployment          |                                                                         |
| kubectl rollout status statefulset         |                                                                         |
| kubectl rollout undo                       |                                                                         |





## kubectl scale

| Key/Command                                | Description                                                             |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| kubectl scale deployment                   |                                                                         |
| kubectl scale statefulset                  |                                                                         |





## Help.
