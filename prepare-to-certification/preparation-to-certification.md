# Preparation to Certification.





## Contents at a Glance.
* [About.](#about)
* [Documentation.](#documentation)
* [Script to Certification.](../kubectl-alias.sh)
* [Help.](#help)





## About.





## Documentation.
* [kubectl Cheat Sheet.](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)





## API-Commands.

| Command                          | SHORTNAMES       | MY SHORTNAMES       |
| -------------------------------- | ---------------- | ------------------- |
| kubectl                          | k                |                     |
| kubectl apply                    | ka               |                     |
| kubectl apply -f                 | kaf              |                     |
| kubectl attach                   |                  |                     |
| kubectl config                   | kconf            |                     |
| kubectl create                   | kc               |                     |
| kubectl create -f                | kcf              |                     |
| kubectl cordon                   |                  |                     |
| kubectl cluster-info             |                  |                     |
| kubectl describe                 | kd               |                     |
| kubectl delete                   | kdel             |                     |
| kubectl delete -f                | kdelf            |                     |
| kubectl diff                     |                  |                     |
| kubectl drain                    |                  |                     |
| kubectl edit                     | ke               |                     |
| kubectl explain                  |                  |                     |
| kubectl expose                   |                  |                     |
| kubectl exec                     |                  |                     |
| kubectl exec -ti                 |                  |                     |
| kubectl get                      | kg               |                     |
| kubectl logs                     | kl               |                     |
| kubectl patch                    |                  |                     |
| kubectl port-forward             | kpf              |                     |
| kubectl rollout                  | krl              |                     |
| kubectl run                      | kr               |                     |
| kubectl set                      |                  |                     |
| kubectl scale                    | ks               |                     |
| kubectl top                      |                  |                     |
| kubectl taint                    |                  |                     |
| kubectl uncordon                 |                  |                     |





## API-Resources.

| NAME                             | SHORTNAMES   | MY SHORTNAMES   | APIGROUP                     | NAMESPACED    | KIND                            |
| -------------------------------- | ------------ | --------------- | ---------------------------- | ------------- | ------------------------------- |
| apiservices                      |              |                 | apiregistration.k8s.io       | false         | APIService                      |
| bindings                         |              |                 |                              | true          | Binding                         |
| csinodes                         |              |                 | storage.k8s.io               | false         | CSINode                         |
| componentstatuses                | cs           |                 |                              | false         | ComponentStatus                 |
| configmaps                       | cm           |                 |                              | true          | ConfigMap                       |
| customresourcedefinitions        | crd,crds     |                 | apiextensions.k8s.io         | false         | CustomResourceDefinition        |
| controllerrevisions              |              |                 | apps                         | true          | ControllerRevision              |
| cronjobs                         | cj           |                 | batch                        | true          | CronJob                         |
| certificatesigningrequests       | csr          |                 | certificates.k8s.io          | false         | CertificateSigningRequest       |
| clusterrolebindings              |              |                 | rbac.authorization.k8s.io    | false         | ClusterRoleBinding              |
| clusterroles                     |              |                 | rbac.authorization.k8s.io    | false         | ClusterRole                     |
| csidrivers                       |              |                 | storage.k8s.io               | false         | CSIDriver                       |
| daemonsets                       | ds           |                 | apps                         | true          | DaemonSet                       |
| deployments                      | deploy       | d               | apps                         | true          | Deployment                      |
| endpoints                        | ep           |                 |                              | true          | Endpoints                       |
| events                           | ev           |                 |                              | true          | Event                           |
| endpointslices                   |              |                 | discovery.k8s.io             | true          | EndpointSlice                   |
| events                           | ev           |                 | events.k8s.io                | true          | Event                           |
| horizontalpodautoscalers         | hpa          |                 | autoscaling                  | true          | HorizontalPodAutoscaler         |
| ingresses                        | ing          |                 | extensions                   | true          | Ingress                         |
| ingresses                        | ing          |                 | networking.k8s.io            | true          | Ingress                         |
| jobs                             |              | j               | batch                        | true          | Job                             |
| limitranges                      | limits       |                 |                              | true          | LimitRange                      |
| localsubjectaccessreviews        |              |                 | authorization.k8s.io         | true          | LocalSubjectAccessReview        |
| leases                           |              |                 | coordination.k8s.io          | true          | Lease                           |
| mutatingwebhookconfigurations    |              |                 | admissionregistration.k8s.io | false         | MutatingWebhookConfiguration    |
| namespaces                       | ns           |                 |                              | false         | Namespace                       |
| nodes                            | no           | n               |                              | false         | Node                            |
| networkpolicies                  | netpol       |                 | networking.k8s.io            | true          | NetworkPolicy                   |
| persistentvolumeclaims           | pvc          |                 |                              | true          | PersistentVolumeClaim           |
| persistentvolumes                | pv           |                 |                              | false         | PersistentVolume                |
| pods                             | po           | p               |                              | true          | Pod                             |
| podtemplates                     |              |                 |                              | true          | PodTemplate                     |
| poddisruptionbudgets             | pdb          |                 | policy                       | true          | PodDisruptionBudget             |
| priorityclasses                  | pc           |                 | scheduling.k8s.io            | false         | PriorityClass                   |
| podsecuritypolicies              | psp          |                 | policy                       | false         | PodSecurityPolicy               |
| replicationcontrollers           | rc           |                 |                              | true          | ReplicationController           |
| resourcequotas                   | quota        |                 |                              | true          | ResourceQuota                   |
| replicasets                      | rs           |                 | apps                         | true          | ReplicaSet                      |
| runtimeclasses                   |              |                 | node.k8s.io                  | false         | RuntimeClass                    |
| rolebindings                     |              |                 | rbac.authorization.k8s.io    | true          | RoleBinding                     |
| roles                            |              |                 | rbac.authorization.k8s.io    | true          | Role                            |
| serviceaccounts                  | sa           |                 |                              | true          | ServiceAccount                  |
| secrets                          |              | sec             |                              | true          | Secret                          |
| services                         | svc          |                 |                              | true          | Service                         |
| statefulsets                     | sts          |                 | apps                         | true          | StatefulSet                     |
| selfsubjectaccessreviews         |              |                 | authorization.k8s.io         | false         | SelfSubjectAccessReview         |
| selfsubjectrulesreviews          |              |                 | authorization.k8s.io         | false         | SelfSubjectRulesReview          |
| subjectaccessreviews             |              |                 | authorization.k8s.io         | false         | SubjectAccessReview             |
| storageclasses                   | sc           |                 | storage.k8s.io               | false         | StorageClass                    |
| tokenreviews                     |              |                 | authentication.k8s.io        | false         | TokenReview                     |
| validatingwebhookconfigurations  |              |                 | admissionregistration.k8s.io | false         | ValidatingWebhookConfiguration  |
| volumeattachments                |              |                 | storage.k8s.io               | false         | VolumeAttachment                |





## Help.
