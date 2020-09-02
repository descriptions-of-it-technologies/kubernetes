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

# Create yaml file of pod configuration.
kubectl run nginx --generator=run-pod/v1 --image=nginx --dry-run=client -o yaml > pod.yaml

# Create yaml file of pod configuration with command env.
kubectl run busybox --image=busybox --restart=Never --dry-run -o yaml --command -- env > pod.yaml
# This command does not work as expected.
kubectl run busybox --image=busybox --restart=Never --dry-run --command -- env -o yaml > pod.yaml
# Create yaml file of pod configuration with command sleep.
kubectl run nginx --image=nginx --dry-run=client -o yaml --command -- sleep 300 > pod.yaml
# Create pod busybox with command echo. When the pod terminated it be removed.
kubectl run busybox --image=busybox --restart=Never --rm -it --command -- echo 'Hello World !!!'

# Create pod with command env.
kubectl run busybox --image=busybox --restart=Never -it --command -- env

# Create pod with namespace.
kubectl run nginx --image=nginx -n=mynamespace
kubectl run nginx --image=nginx --namespace=mynamespace

# Create yaml file of pod configuration. Not work flag namespace.
kubectl run nginx --image=nginx -n=mynamespace --dry-run=client -o yaml > pod-3.yaml
kubectl run nginx --image=nginx --namespace=mynamespace --dry-run=client -o yaml > pod-3.yaml

# Create pod with labels.
kubectl run nginx --image=nginx --restart=Never --labels=app=v1
# Overwrite label.
kubectl label pod nginx2 key=newValue --overwrite
# Get all pods by label.
kubectl get pod -l=app
kubectl get pod -l=app=v1
kubectl get pod -l 'app in (v1)'
kubectl get po --selector=app=v1
kubectl get pod -L=app
kubectl get pod --label-columns=app
# Get all pods that not have the label.
kubectl get pod -l='!app'
# Delete label from pod.
kubectl label pod namePod key-

# Add annotations to pod.
kubectl annotate pod namePod description='Some important description.'
# Remove the annotation of pod.
kubectl annotate pod namePod key-

# Create pod with pot 80.
kubectl run nginx --image=nginx --restart=Never --port=80

# Change pod's image to nginx:1.7.1.
kubectl set image pod/nginx nginx=nginx:1.7.1

#
kubectl run busybox --image=busybox --rm -it --restart=Never -- wget -O- 10.244.1.4:80

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

# Update deployment image.
kubectl set image deploy nginx nginx=nginx:1.7.9
kubectl set image deploy nginx nginx=nginx:1.7.9 --record
kubectl edit deploy nginx
kubectl edit deploy nginx --record

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

# ====================================================================================================================== Service
kubectl create service clusterip redis --tcp=6379:6379 --dry-run -o yaml
kubectl create service nodeport nginx --tcp=80:80 --node-port=30080 --dry-run -o yaml

# ====================================================================================================================== PersistentVolume

# ====================================================================================================================== PersistentVolumeClaim

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
# Create namespace.
kubectl create namespace [nameNamespace]

# Create yaml file of namespace configuration.
kubectl create namespace myns --dry-run -o yaml > ns.yaml

# ====================================================================================================================== Config
kubectl config current-context
kubectl config set-context [contextName] --namespace=[namespace] --user=[userName] --cluster=[clusterName]
kubectl config set-context [contextName] --cluster=[clusterName] --user=[userName]
kubectl config get-contexts
kubectl config use-context [contextName]
kubectl config delete-context

# ====================================================================================================================== Job

# ====================================================================================================================== CronJob

# ====================================================================================================================== ResourceQuota
# A resource quota, defined by a ResourceQuota object, provides constraints that limit aggregate resource consumption
# per namespace. It can limit the quantity of objects that can be created in a namespace by type, as well as the total
# amount of compute resources that may be consumed by resources in that project.

# Create ResourceQuota with hard limits of 1 CPU, 3Gi memory.
kubectl create quota myrs --hard=cpu=1,memory=3Gi

# Create yaml config file of ResourceQuota with hard limits of 1 CPU, 1G memory and 2 pods.
kubectl create         quota myrq --hard=cpu=1,memory=1Gi,pods=2 --dry-run -o yaml > rq.yaml
kubectl create resourcequota myrq --hard=cpu=1,memory=1Gi,pods=2 --dry-run -o yaml > rq.yaml

# Create yaml config file of ResourceQuota.
kubectl create quota myrq --hard=pods=2,cpu=1,requests.cpu=3,limits.cpu=1,memory=200Gi,requests.memory=3Gi,limits.memory=10Gi --dry-run=client -o yaml > rs.yaml

# ====================================================================================================================== LimitRanges
# By default, containers run with unbounded compute resources on a Kubernetes cluster. With resource quotas, cluster
# administrators can restrict resource consumption and creation on a namespace basis. Within a namespace, a Pod or
# Container can consume as much CPU and memory as defined by the namespace's resource quota. There is a concern that
# one Pod or Container could monopolize all available resources. A LimitRange is a policy to constrain resource
# allocations (to Pods or Containers) in a namespace.

# ====================================================================================================================== ServiceAccount
kubectl create serviceaccount [nameServiceAccount]

# ====================================================================================================================== Affinity Node

# Operators: In, NotIn, Exists, DoesNotExist, Gt, Lt.

# ====================================================================================================================== Taints

# Taint effect: NoSchedule, PreferNoSchedule, NoExecute.

# ====================================================================================================================== Logs

kubectl logs podName

kubectl logs podName -c containerName

# If pod crashed and restarted, get logs about the previous instance
kubectl logs nginx -p

# ====================================================================================================================== Events

kubectl get events

# ====================================================================================================================== Explain
kubectl explain cronjob.spec.jobTemplate --recursive

# ====================================================================================================================== Exec

kubectl exec -it podName -- /bin/bash

kubectl exec -it podName -- /bin/sh

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
