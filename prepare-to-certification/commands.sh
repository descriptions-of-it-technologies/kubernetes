# ====================================================================================================================== Node
# Taint Node.
kubectl taint node nodeName key=value:taint-effect
# Delete taint Node.
kubectl taint node nameNode key/value:taint-effect-
# Show node taint.
kubectl describe node nodeName | grep Taint

# ====================================================================================================================== Pod
# Create yaml file of pod configuration.
kubectl run nginx --image=nginx --dry-run=client -o yaml > pod.yaml

# Create yaml file of pod configuration with command sleep.
kubectl run nginx --image=nginx --dry-run=client -o yaml --command -- sleep 300 >pod.yaml

kubectl label pod [podName] [key]=[value]
kubectl label pod [podName] [key]=[value] --overwrite
kubectl label pod [podName] [key]-

# Pods status.
# Init:N/M	                       The Pod has M Init Containers, and N have completed so far.
# Init:Error	                     An Init Container has failed to execute.
# Init:CrashLoopBackOff	           An Init Container has failed repeatedly.
# Pending	                         The Pod has not yet begun executing Init Containers.
# PodInitializing or Running	     The Pod has already finished executing Init Containers.

# ====================================================================================================================== Deployment
# Create yaml file of deployment configuration.
kubectl create deploy nginx --image=nginx --dry-run=client -o yaml > deployment.yaml

# Scale Deployment of 6 replicas.
kubectl scale deploy nginx --replicas=6

kubectl label deployment [deploymentName] [key]=[value]
kubectl label deployment [deploymentName] [key]=[value] --overwrite
kubectl label deployment [deploymentName] [key]-

kubectl rollout pause deployment [deploymentName]
kubectl rollout resume deployment [deploymentName]
kubectl rollout status deployment [deploymentName]
kubectl rollout history deployment [deploymentName]
kubectl rollout history deployment [deploymentName] --revision=[numberRevision]
kubectl rollout undo deployment [deploymentName]
kubectl rollout undo deployment [deploymentName] --to-revision=[revisionNumber]

# ====================================================================================================================== ConfigMap
kubectl create cm configDB --from-literal=user=admin -o yaml > configDB.yaml
kubectl create configmap [configmapName] --from-literal=[key]=[value] --from-literal=[key]=[value]

kubectl create configmap [configmapName] --from-file=[path]

# Caution: When passing --from-env-file multiple times to create a ConfigMap from multiple data sources, only the last env-file is used.
kubectl create configmap [configmapName] --from-env-file=[path]

kubectl create configmap [configmapName] --from-file=[my-key-name]=[path-to-file]

# * You must create a ConfigMap before referencing it in a Pod specification (unless you mark the ConfigMap as "optional").
#   If you reference a ConfigMap that doesn't exist, the Pod won't start. Likewise, references to keys that don't exist in
#   the ConfigMap will prevent the pod from starting.
# * If you use envFrom to define environment variables from ConfigMaps, keys that are considered invalid will be skipped.
#   The pod will be allowed to start, but the invalid names will be recorded in the event log (InvalidVariableNames).
#   The log message lists each skipped key.
# * ConfigMaps reside in a specific Namespace. A ConfigMap can only be referenced by pods residing in the same namespace.
# * You can't use ConfigMaps for static pods, because the Kubelet does not support this.


# ====================================================================================================================== Secret
kubectl create secret generic secret-db --from-literal=user=admin -o yaml > secret-db.yaml
kubectl create secret generic [secretName] --from-literal=[key]=[value] --from-literal=[key]=[value]
kubectl create secret generic [secretName] --from-file=[path] --from-file=[path]

echo -n 'admin' | base64
echo 'MWYyZDFlMmU2N2Rm' | base64 --decode

# If a field, such as username, is specified in both data and stringData, the value from stringData is used.

# ====================================================================================================================== Namespace
kubectl create namespace [nameNamespace]

# ====================================================================================================================== Config
kubectl config current-context
kubectl config set-context [contextName] --namespace=[namespace] --user=[userName] --cluster=[clusterName]
kubectl config set-context [contextName] --cluster=[clusterName] --user=[userName]
kubectl config get-contexts
kubectl config use-context [contextName]
kubectl config delete-context

# ====================================================================================================================== Job

# ====================================================================================================================== Service
kubectl create service clusterip redis --tcp=6379:6379 --dry-run -o yaml
kubectl create service nodeport nginx --tcp=80:80 --node-port=30080 --dry-run -o yaml

# ====================================================================================================================== CronJob

# ====================================================================================================================== ServiceAccount
kubectl create serviceaccount [nameServiceAccount]

# ====================================================================================================================== Affinity Node

# Operators: In, NotIn, Exists, DoesNotExist, Gt, Lt.

# ====================================================================================================================== Taints

# Taint effect: NoSchedule, PreferNoSchedule, NoExecute.

# ====================================================================================================================== Logs

kubectl logs podName

kubectl logs podName -c containerName

# ====================================================================================================================== Events

kubectl get events

# ====================================================================================================================== Explain
kubectl explain cronjob.spec.jobTemplate --recursive

# ====================================================================================================================== Exec

kubectl exec -it podName -- /bin/bash

kubectl exec -it podName -c containerName -- /bin/bash

kubectl attach -it podName -c shell

# ====================================================================================================================== InitContainer

# Init containers always run to completion.
# Each init container must complete successfully before the next one starts.

# If a Pod's init container fails, Kubernetes repeatedly restarts the Pod until the init container succeeds.
# However, if the Pod has a restartPolicy of Never, Kubernetes does not restart the Pod.

# Init containers support all the fields and features of app containers, including resource limits, volumes, and security settings.

# Also, init containers do not support lifecycle, livenessProbe, readinessProbe, or startupProbe because they must run to completion before the Pod can be ready.

# If you specify multiple init containers for a Pod, Kubelet runs each init container sequentially.
# Each init container must succeed before the next can run. When all of the init containers have run to completion,
# Kubelet initializes the application containers for the Pod and runs them as usual.
