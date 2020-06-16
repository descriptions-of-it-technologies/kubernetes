# Kubernetes Main Components.





## Contents at a Glance.
* [About.](#about)
* [Documentation.](#documentation)
* [cluster](#cluster)
* [node](#node)
* [deployment](#deployment)
* [pod](#pod)
* [service](#service)
* [replicaset](#replicaset)
* [namespace](#namespace)
* [context](#context)
* [daemonset](#daemonset)
* [job](#job)
* [cronjob](#cronjob)
* [initcontainer](#initcontainer)
* [persistent-volume](#persistent-volume)
* [persistent-volume-claim](#persistent-volume-claim)
* [secrets](#secrets)
* [configmap](#configmap)
* [initContainer](#initcontainer)
* [Help.](#help)




## About.





## Documentation.





## Cluster.





## Node.





## Pod.
Edit a POD. Remember, you CANNOT edit specifications of an existing POD other than the below.
* spec.containers[*].image
* spec.initContainers[*].image
* spec.activeDeadlineSeconds
* spec.tolerations
* For example you cannot edit the environment variables, service accounts, resource limits of a running pod. 
But if you really want to, you have 2 options:
* Run the `kubectl edit pod "pod name"` command. This will open the pod specification in an editor (vi editor). 
  Then edit the required properties. When you try to save it, you will be denied. This is because you are attempting 
  to edit a field on the pod that is not editable. A copy of the file with your changes is saved in a temporary location 
  as shown above. You can then delete the existing pod by running the command `kubectl delete pod webapp`. Then create 
  a new pod with your changes using the temporary file `kubectl create -f new-config-of-pod.yaml`.
* The second option is to extract the pod definition in YAML format to a file using the command `kubectl get pod webapp -o yaml > my-new-pod.yaml`
  Then make the changes to the exported file using an editor (vi editor). Save the changes `vi my-new-pod.yaml`. 
  Then delete the existing pod `kubectl delete pod webapp`. Then create a new pod with the edited file `kubectl create -f my-new-pod.yaml`.
* When a pod is deleted, its logs are also deleted.  To make a pod’s logs available even after the pod is deleted, you 
  need to set up centralized, cluster-wide logging, which stores all the logs into a central store. 
* When you want to talk to a specific pod without going through a service (for debugging or other reasons), Kubernetes 
  allows you to configure port forwarding to the pod. This is done through the kubectl port-forward command. The following 
  command will forward your machine’s local.




## ReplicaSet.





## Deployment.
* Update strategies: Recreate, RollingUpdate. Default deployment update strategy is RollingUpdate.
* Edit Deployments. With Deployments you can easily edit any field/property of the POD template. Since the pod template 
  is a child of the deployment specification,  with every change the deployment will automatically delete and create a 
  new pod with the new changes. So if you are asked to edit a property of a POD part of a deployment you may do that 
  simply by running the command `kubectl edit deployment my-deployment`.
* IMPORTANT. `kubectl create deployment` does not have a `--replicas` option. You could first create it and then scale 
  it using the `kubectl scale` command.
* `--generator=deployment/v1beta1` is deprecated as of Kubernetes 1.16. The recommended way is to use the `kubectl create` option instead.`





## StatefulSet.





## Namespace.





## Context.





## Service.
* Service Types: NodePrt, ClusterIp, LoadBalancer. LoadBalancer service type only work on cloud platforms such as Google Cloud or AWS.
* NodePort can only be in a valid range which by default is from 30000 to 32767.






## Ingress.
* Ingress Controller (not deployed by default).
* Ingress Resources.
* Ingress Controllers: GCP HTTP(S) Load Balancer(GCE), Nginx, Contour, Haproxy, trafik, Istio.




## Network Policies.
* Two types of traffic ingress and egress.





## ConfigMap.





## Secrets.
* Remember that secrets encode data in base64 format. Anyone with the base64 encoded secret can easily decode it. As such the secrets can be considered as not very safe.
> As in best practices like:
>> Not checking-in secret object definition files to source code repositories.
>> [Enabling Encryption at Rest](https://kubernetes.io/docs/tasks/administer-cluster/encrypt-data/) for Secrets so they are stored encrypted in ETCD. 

> Also the way kubernetes handles secrets. Such as:
>> A secret is only sent to a node if a pod on that node requires it.
>> Kubelet stores the secret into a tmpfs so that the secret is not written to disk storage.
>> Once the Pod that depends on the secret is deleted, kubelet will delete its local copy of the secret data as well.
>> Read about the [protections](https://kubernetes.io/docs/concepts/configuration/secret/#protections) and risks of using secrets [here](https://kubernetes.io/docs/concepts/configuration/secret/#risks)

* Having said that, there are other better ways of handling sensitive data like passwords in Kubernetes, such as using tools like Helm Secrets, HashiCorp Vault.





## Service Account.
* Are two types of accounts in Kubernetes a user account and a service account.
* The user accounts is used by humans and service account are used by machines.
* User accounts: admin, developer, ...
* Service account: Prometheus, Jenkins, ... 





## Security Contexts.
* If you configured it at both the POD and the CONTAINER, the settings on the CONTAINER will be override the settings on the POD.  
* The User ID defined in the securityContext of the POD is carried over to all the PODs in the container.





## DaemonSet.





## Job.
* [completions.]()
* [parallelism.]()
* [backoffLimit]()
* [activeDeadlineSeconds]()

* If tasks complete successfully the return code is zero
* By the default the job are created one after the other. The secibd job is crated only after the first is finished.




## CronJob.
* [successfulJobHistoryLimit]()
* [failedJobsHistoryLimit]()
* [suspending cron job]()
* [concurrencyPolicy]()
* [idempotency]()





## Resources.
* In the previous lecture, I said - "When a pod is created the containers are assigned a default CPU request of 0.5 and memory of 256Mi". 
  For the POD to pick up those defaults you must have first set those as default values for request and limit by creating a LimitRange in that namespace.

> * 1 CPU = 1 AWS vCPU
> * 1 CPU = 1 GCP CORE
> * 1 CPU = 1 Azure Core
> * 1 CPU = 1 Hyperthread

> * 1G (Gigabyte) = 1,000,000,000 bytes
> * 1M (Megabyte) = 1,000,000 bytes
> * 1K (Kilobyte) = 1,000 bytes

> * 1Gi (Gibibyte) = 1,073,741,824 bytes
> * 1Mi (Mebibyte) = 1,048,576 bytes
> * 1Ki (Kibibyte) = 1,024 bytes

* So what happens when you part tries to executed resources beyond its specified limit. In case of CPUS Kubernetes 
  as throttles the CPU so that it does not go beyond the specified limit. A container cannot use more CPU resources than its limit.
* However this is not the case with the memory a container can use more memory resources than its limit. So if a pod tries 
  to consume more memory than its limit constantly the part will be terminated.
* The status 'OOMKilled' indicates that the pod ran out of memory.
* The taint effect defines what would happen to the pods if they do not tolerate the taint. 
* There are three main effects: 
  * NoSchedule which means the parts will not be schedule  on the node.
  * PreferNoSchedule which means the system will try to avoid placing it pod on the node but that is not guaranteed.
  * And third is NoExecute, which means that new pods will not be scheduled on the node and existing pods on the node, 
    if any, will be evicted if they do not tolerate the taint. These  pods may have been scheduled on the node before 
    taint was applied to the node.
* While tainting the node we set to taint effect to NoExecute. And as such once the taint on the node takes effect it 
  evicts "pod whu not have tolerance" from the node. Which simply means that the pod is killed. The "pod whu have tolerance"
  continue to run on the node as it has a toleration to the taint.
  
  
  
  
  
## InitContainer.





### Reclaim Policy.
* [Retain]()
* [Recycle(Deprecated)]()
* [Delete]()
* hostpath in generally is not used in a production environment, because of hostpath available only on one node.
* hostpath deleter only supports /tmp/.





### Access Mode.
* [RWO]()
* [RWM]()
* [RO]()





## Volumes.





## Persistent Volume.
* Types of access mode: ReadOnlyMany, ReadWriteOnce, ReadWriteMany.
* The Access Modes set on the PV and the PVC should be a match.
* Dynamic provisioning of volumes.




## Persistent Volume Claim.
* The Access Modes set on the PV and the PVC should be a match.





## Storage Class.





## Node Selector.    
* Node Limitations. Large or Medium. NOT Small.





## Taints and Tolerations.





## Node Affinity.





## Multi-Container Pods.
* Ambassador.
* Adapter.
* Sidecar.





## Readiness Probe.
POD Status.
* Pending.
* ContainerCreating.
* Running.

POD Conditions.
* PodScheduled.
* Initialized.
* ContainersReady.
* Ready.




## Liveness Probe.
When the application crashes, the container is restarted. During this period the service directs users to the available POD, since the POD status is not READY.





## Rolling Updates & Rollbacks Deployments.
Deployment Strategy.
* Recreate.
* Rolling Update. (Default Deployment Strategy.)





# Logs.
* Container logs are automatically rotated daily and every time the log file reaches 10MB in size. The kubectl logs 
  command only shows the log entries from the last rotation.
* When a pod is deleted, its logs are also deleted.  To make a pod’s logs available even after the pod is deleted, you 
  need to set up centralized, cluster-wide logging, which stores all the logs into a central store.




## Label Selectors.
* Labels and label selectors should be used to organize pods and easily perform operations on multiple pods at once.





## Port-Forwarding.
* When you want to talk to a specific pod without going through a service (for debugging or other reasons), Kubernetes 
  allows you to configure port forwarding to the pod. This is done through the kubectl port-forward command. The following 
  command will forward your machine’s local.



    

## Help.
