# Kubernetes Main Information.





## Contents at a Glance.
* [About.](#about)
* [Documentation.](#documentation)
* [Kubernetes Main Concepts.](#kubernetes-main-concepts)
* [Node.](#node)
* [Pod.](#pod)
* [ReplicaSet.](#replicaset)
* [Deployment.](#deployment)
* [Namespace.](#namespace)
* [Configmap.](#configmap)
* [Security Contexts.](#security-contexts)
* [Secret.](#secret)
* [Service Account.](#service-account)
* [Resources](#resources)
* [Node Selector.](#node-selector)
* [Taints and Tolerations.](#taints-and-tolerations)
* [Node Affinity.](#node-affinity)
* [kubectl tools.](#kubectl-tools)
* [Kubernetes Features.](#kubernetes-features)
* [Kubernetes Commands.](kubernetes-commands.md)
* [What Problems Does Kubernetes Aim to Solve?](#what-problems-does-kubernetes-aim-to-solve)
* [What problems can Kubernetes not solve?](#what-problems-can-kubernetes-not-solve)
* [Manifest File.](#manifest-file)
* [Docker Image Registry.](#docker-image-registry)
* [Kubernetes Cloud Service.](#kubernetes-cloud-services)
* [Info.](#info)
* [Pros.](#pros)
* [Managing Services.](#managing-services)
* [Managers Kubernetes Configuration.](#managers-kubernetes-configuration)
* [Multi-cloud continuous delivery platform.](#multi-cloud-continuous-delivery-platform)
* [Metrics and Alerting.](#metrics-and-alerting)
* [Cloud Native Computing Foundation (CNCF).](#cloud-native-computing-foundation-cncf)
* [Alternatives Kubernetes.](#alternatives-kubernetes)
* [The platforms maybe also include.](#the-platforms-maybe-also-include)
* [Logging Services.](#logging-services)
* [Chaos Engineering Services.](#chaos-engineering-services)
* [Tracing Services.](#tracing-services)
* [Manage Secrets Services.](#manage-secrets-services)
* [Testing Services.](#testing-services)
* [Code Quality and Quality Gates.](#code-quality-and-quality-gates)
* [CI/CD Services.](#cicd-services)
* [CI/CD Kubernetes Technologies.](#cicd-kubernetes-technologies)
* [Technologies.](#technologies)
* [Kind Main Information.](#kubernetes-main-information)
* [Kind Commands.](../kind-main-information/kind-commands.md)
* [Minikube Main Information.](minikube-main-information.md)
* [Minikube Commands.](../minikube-main-information/minikube-commands.md)
* [Helm Main Information.](helm-main-information.md)
* [Helm Commands.](../helm-main-information/helm-commands.md)
* [Kubernetes on Amazon Web Services.](kubernetes-on-aws.md)
* [Kubernetes on Google Kubernetes Engine.](kubernetes-on-gke.md)
* [Articles.](#articles)
* [Conferences.](#conferences)
* [Conference Speakers.](#conference-speakers)
* [Courses.](#courses)
* [Books.](#books)
* [Sites for practices.](#sites-for-practices)
* [Help.](#help)





## About.





## Documentation.
* [Kubernetes.](https://kubernetes.io/)
* [Kubernetes Documentation.](https://kubernetes.io/docs/home/)
* [Reference.](https://kubernetes.io/docs/reference/)
* [Kubernetes native configuration management.](https://kustomize.io/)
* [kubectl Cheat Sheet.](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
* [Community Forums.](https://discuss.kubernetes.io/)
* [Recommendations from 12 factor by Heroku.](https://12factor.net/)





## Kubernetes Main Concepts.
* [Cluster.]()
* [Nodes.]()
* [Master Node.]()
* [kube-apiserver]()
* [kube-controller-manager]()
* [kube-scheduler]()
* [Worker Node.]()
* [kubelet]()
* [kube-proxy]()
* [etcd]()





## Node.





## Pod.
Edit a POD. Remember, you CANNOT edit specifications of an existing POD other than the below.
* spec.containers[*].image
* spec.initContainers[*].image
* spec.activeDeadlineSeconds
* spec.tolerations
* For example you cannot edit the environment variables, service accounts, resource limits of a running pod. 

But if you really want to, you have 2 options:
* Run the `kubectl edit pod "pod name"` command.  This will open the pod specification in an editor (vi editor). 
  Then edit the required properties. When you try to save it, you will be denied. This is because you are attempting 
  to edit a field on the pod that is not editable. A copy of the file with your changes is saved in a temporary location 
  as shown above. You can then delete the existing pod by running the command `kubectl delete pod webapp`. Then create 
  a new pod with your changes using the temporary file `kubectl create -f new-config-of-pod.yaml`.
* The second option is to extract the pod definition in YAML format to a file using the command `kubectl get pod webapp -o yaml > my-new-pod.yaml`
  Then make the changes to the exported file using an editor (vi editor). Save the changes `vi my-new-pod.yaml`. 
  Then delete the existing pod `kubectl delete pod webapp`. Then create a new pod with the edited file `kubectl create -f my-new-pod.yaml`.

* When a pod is deleted, its logs are also deleted.  To make a pod’s logs available even after the pod is deleted, you 
  need to set up centralized, cluster-wide logging, which stores all the logs into a central store. 





## ReplicaSet.





## Deployment.
* Edit Deployments. With Deployments you can easily edit any field/property of the POD template. Since the pod template 
  is a child of the deployment specification,  with every change the deployment will automatically delete and create a 
  new pod with the new changes. So if you are asked to edit a property of a POD part of a deployment you may do that 
  simply by running the command `kubectl edit deployment my-deployment`.
* IMPORTANT. `kubectl create deployment` does not have a `--replicas` option. You could first create it and then scale it using the `kubectl scale` command.




## Namespace.





## Service.
* NodePort can only be in a valid range which by default is from 30000 to 32767.





## Ingress.





## Configmap.





## Security Contexts.
* If you configured it at both the POD and the CONTAINER, the settings on the CONTAINER will be override the settings on the POD.  
* The User ID defined in the securityContext of the POD is carried over to all the PODs in the container.




## Secret.
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




## Job.
* If tasks complete successfully the return code is zero
* By the default the job are created one after the other. The secibd job is crated only after the first is finished.





## Cron Job.





## kubectl tools.
* [Krew](https://krew.sigs.k8s.io/)
* [stern]()
* [kubectx]()
* [kubens]()





## Kubernetes Features.
* [Service discovery and load balancing.]()
* [Storage orchestration.]()
* [Automated rollouts and rollbacks]()
* [Automatic bin packaging.]()
* [Self-healing.]()
* [Secret and configuration management.]()





## What Problems Does Kubernetes Aim to Solve?
* Service discovery and load balancing. You have an application comprising of hundreds of Microservices, and they need to 
  efficiently and reliably communicate with each other. Kubernetes can take care of that.
  
* Horizontal scaling. The workload on your application is known to surge abruptly. Scaling up the replicas of a service 
  will balance your workload. Scaling it down after the surge keeps your costs low. Kubernetes can do that for you (auto scale).
  
* Self healing. Whenever one of the hundreds of services goes down due to fatal error, you’ll want to automatically 
  instantiate a new, healthy replica of this service. Kubernetes can do this for you (self healing).

* Automated rollouts and rollbacks. Kubernetes can take care of deployment operations like the rollout of a new version 
  of the application, and the rollback to a previous version. All of these operations can be performed reliably just by 
  executing a couple of commands from a command line.

* Secret and configuration management. Kubernetes provides built-in mechanisms to effectively store and manage configuration 
  (like environmental variables, database connections) across different environments (eg : production, test, development). 
  It also allows for storing sensitive configuration data, meant to be kept secret in a special manner, so that accidental 
  exposure of such data is minimized.

* Storage orchestration. Kubernetes allows for effective management of storage required by an application. In Kubernetes, 
  storage management is separated into multiple steps. The allocated storage is first configured, then a claim is made 
  whenever an application in the cluster requires this storage. Kubernetes provides excellent integration with various 
  storage solutions supported by cloud providers.





## What problems can Kubernetes not solve?
* Kubernetes doesn’t deploy source code or build the application. Continuous integration, delivery, and deployment (CI/CD) 
  workflows are not a core feature of Kubernetes. Automation tools like Jenkins, which has excellent integration 
  with Kubernetes, could be used for such tasks.
  
* Kubernetes does not provide application-level services, such as message buses, data processing frameworks, databases, 
  caches and storage systems as built-in services. These components can run on Kubernetes, and/or can be accessed by 
  applications running on Kubernetes through portable mechanisms, such as the Open Service Broker.
  
* Kubernetes does not dictate logging, monitoring, or alerting solutions. Although Kubernetes comes with some integrations 
  as proof of concept, and mechanisms to collect and export metrics, using external tools that are best suited for your 
  particular use is recommended.





## Manifest File.





## Docker Image Registry.
* [DockerHub.](https://hub.docker.com/)
* [AWS Container Registry (ECR).](https://aws.amazon.com/ecr/)
* [Google Container Registry.](https://cloud.google.com/container-registry/?utm_source=google&utm_medium=cpc&utm_campaign=emea-es-all-en-dr-bkws-all-all-trial-e-gcp-1008073&utm_content=text-ad-none-any-DEV_c-CRE_167371241890-ADGP_Hybrid+%7C+AW+SEM+%7C+BKWS+~+EXA_M:1_ES_EN_Compute_Container+Registry_google+container+registry-KWID_43700016297300130-kwd-197849459819-userloc_1005457&utm_term=KW_google%20container%20registry-NET_g-PLAC_&ds_rl=1242853&ds_rl=1245734&ds_rl=1245734&gclid=Cj0KCQjwyPbzBRDsARIsAFh15JYL--7uTx8bL6MTre-fd5J4aXOHSa5FkfqhpbXDf85Wg-yIxYNYhNcaAs1XEALw_wcB)
* [Azure Container Registry.](https://azure.microsoft.com/es-es/services/container-registry/)
* [Harbor. An open source trusted cloud native registry project that stores, signs, and scans content](https://goharbor.io/)





## Kubernetes Cloud Services.
* [Amazon - Amazon Elastic Kubernetes Service (EKS).]()
* [Google - Google Kubernetes Engine (GKE).]()
* [Microsoft - Azure Kubernetes Service (AKS).]()
* [AliBaba - Container Service for Kubernetes (ACK).]()
* [Yandex - Yandex Managed Service for Kubernetes.]()





## Info.
* Local Caching. Caches of different nodes are not synchronized with each other.





## Pros.
* Kubernetes can run containerized applications of any scale without any downtime.
* Kubernetes can self-heal containerized applications, making them resilient to unexpected failures.
* Kubernetes can auto-scale containerized applications as per the workload, and ensure optimal utilization of cloud resources.
* Kubernetes greatly simplifies the process of deployment operations. With Kubernetes, however complex an operation is, 
  it could be performed reliably by executing a couple of commands, at most.





## Managing Services.
* [Istio.](https://istio.io/)





## Managers Kubernetes Configuration.
* [Helm.](https://helm.sh/)
* [Envoy.](https://www.envoyproxy.io/)





## Multi-cloud continuous delivery platform.
* [Spinnaker.](https://www.spinnaker.io/)





## Metrics and Alerting.
* [Prometheus.](https://prometheus.io/)
* [Grafana.](https://grafana.com/)
* [Elastic Stack]()
* [DataDog]()
* [Dynatrace]()
`https://github.com/kodekloudhub/kubernetes-metrics-server.git`





## Cloud Native Computing Foundation (CNCF).
* [Cloud Native Computing Foundation (CNCF)](https://www.cncf.io/)
* [Project Services and Maturity Levels.](https://www.cncf.io/projects/)





##  Alternatives Kubernetes.
* [Netflix OSS and Spring Cloud.](https://www.google.com/search?newwindow=1&safe=active&sxsrf=ALeKk00Cg-5hAc0sue1PAfLe8fQMYroiBg%3A1585386187052&ei=yxJ_XrHfAoe-UvPXsNAE&q=netflix+oss+and+spring+cloud&oq=Netflix+OSS+and+&gs_lcp=CgZwc3ktYWIQARgBMgYIABAWEB4yBggAEBYQHjIFCAAQzQI6BAgAEEc6AggAUKOkAliK1QJglOsCaABwAngAgAFeiAGhA5IBATWYAQCgAQGqAQdnd3Mtd2l6&sclient=psy-ab)
* [Docker Swarm.](https://docs.docker.com/get-started/swarm-deploy/)
* [Marathon on Apache Mesos.](https://mesosphere.github.io/marathon/)





## The platforms maybe also include.
* Tracing.
* Feature Flags.
* Service Discovery.
* Chaos Engineering.
* Secrets Management.
* Code Quality and Quality Gates.





## Logging Services.
* [ELK.](https://www.google.com/search?q=loggin+elk&oq=loggin+elk&aqs=chrome..69i57j0l7.20141j0j7&sourceid=chrome&ie=UTF-8)
* [Loki.](https://www.google.com/search?newwindow=1&safe=active&sxsrf=ALeKk02Jtv3Wgx8J32kI1ho-XxShR7miCA%3A1585389991277&ei=pyF_XsPDEILmU-7koogE&q=logging+loki&oq=logging+loki&gs_lcp=CgZwc3ktYWIQAzIECAAQRzIECAAQRzIECAAQRzIECAAQRzIECAAQRzIECAAQRzIECAAQRzIECAAQR1AAWABg2qEEaABwBHgAgAEAiAEAkgEAmAEAqgEHZ3dzLXdpeg&sclient=psy-ab&ved=0ahUKEwiDs4r69bzoAhUC8xQKHW6yCEEQ4dUDCAs&uact=5)
* [Graylog.](https://www.google.com/search?newwindow=1&safe=active&sxsrf=ALeKk01ZacX2fhS2umPgJ6i4hyO5oKnTgw%3A1585390062201&ei=7iF_XvTzC92DjLsP4sWyoAk&q=logging+graylog&oq=logging+gredlog&gs_lcp=CgZwc3ktYWIQARgAMgYIABANEB4yCAgAEA0QBRAeMggIABANEAUQHjIICAAQDRAFEB4yCAgAEA0QBRAeMggIABANEAUQHjIICAAQDRAFEB4yCAgAEA0QBRAeMggIABANEAUQHjIICAAQDRAFEB46BAgAEEc6BAgjECc6BggAEBYQHjoCCAA6BwgAEBQQhwI6BQgAEJECOgQIABAKOggIIRAWEB0QHjoECAAQDToFCCEQoAFQ5okFWNrfBWCg-wVoAHACeACAAWqIAZcHkgEEMTAuMZgBAKABAaoBB2d3cy13aXo&sclient=psy-ab)
* [LOGSTASH.](https://www.elastic.co/logstash)
* [Fluentd.](https://www.fluentd.org/)



## Chaos Engineering Services.
* [kube-monkey](https://github.com/asobti/kube-monkey)





## Tracing Services.
* [Jaeger.](https://www.jaegertracing.io/)
* [Opentracing.](https://opentracing.io/)
* [Zipkin.](https://zipkin.io/)





## Manage Secrets Services.
* [Vault.](https://www.hashicorp.com/products/vault/)





## Testing Services.
* [Running Tsung in Kubernetes.](http://tsung.erlang-projects.org/)
* [Running Tsung in Kubernetes. GitHub.](https://github.com/kubeup/tsung-in-kubernetes)
* [Selenium Grid on Kubernetes.](https://github.com/kubernetes/examples/tree/master/staging/selenium)





## Code Quality and Quality Gates.
* [SonarQube.](https://www.sonarqube.org/)





## CI/CD Services.
* [Kubernetes plugin for Jenkins.](https://plugins.jenkins.io/kubernetes/)
* [Kubernetes plugin for Jenkins. GitHub.](https://github.com/jenkinsci/kubernetes-plugin)
* [The GitLab Kubernetes executor.](https://docs.gitlab.com/runner/executors/kubernetes.html)





## CI/CD Kubernetes Technologies.
* [Canary Deployment.](https://www.google.com/search?q=canary+deployment+kubernetes&oq=Canary+deployment+Kubernetes&aqs=chrome.0.0l7.4529j0j7&sourceid=chrome&ie=UTF-8)
* [Blue/Green Deployment.](https://www.google.com/search?newwindow=1&safe=active&sxsrf=ALeKk02heYOj66VXwXNl7-MxgrhpLDf41Q%3A1585307330377&ei=wt59Xs-8FoyhUN7KstAL&q=blue%2Fgreen+deployment+kubernetes&oq=blue+green+deployment&gs_l=psy-ab.1.1.0i71l8.0.0..348183...0.2..0.0.0.......0......gws-wiz.uzLPW4VkqPE)
* [Rolling Deployment.](https://www.google.com/search?newwindow=1&safe=active&sxsrf=ALeKk037LWAuG2UBQVxHo7pOFZzGXUW9HA%3A1585308890726&ei=2uR9Xu3oK4exUOmYmYgL&q=rolling+deployment+kubernetes&oq=rolling+deployment+&gs_l=psy-ab.1.9.35i39j0i20i263j0l5j0i67j0j0i20i263.752.752..4553...0.2..0.71.71.1......0....1..gws-wiz.......0i71.2p360WRlWyc)





## Technologies.
* [Elastic.](https://www.elastic.co/)





## Articles.
* [Kubernetes — What Is It, What Problems Does It Solve and How Does It Compare With Alternatives?](https://medium.com/@srikanth.k/kubernetes-what-is-it-what-problems-does-it-solve-how-does-it-compare-with-its-alternatives-937fe80b754f)
* [How I passed the CKA (Certified Kubernetes Administrator) Exam](https://medium.com/platformer-blog/how-i-passed-the-cka-certified-kubernetes-administrator-exam-8943aa24d71d)





## Conferences.





## Conference Speakers.





## Courses.
* [Learn Kubernetes](https://www.youtube.com/playlist?list=PL34sAs7_26wNBRWM6BDhnonoA5FMERax0)
* [Kubernetes на Русском Языке.](https://www.youtube.com/playlist?list=PLg5SS_4L6LYvN1RqaVesof8KAf-02fJSi)
* [Certified Kubernetes Administrator (CKA) with Practice Tests](https://kodekloud.com/p/certified-kubernetes-administrator-with-practice-tests)





## Books.
* [Kubernetes in Action.](https://www.google.com/search?q=kubernetes+in+action&oq=Kubernetes+in+Action&aqs=chrome.0.0l7j69i60.339j0j4&sourceid=chrome&ie=UTF-8)





## Sites for Practices.
* [Katacoda](https://www.katacoda.com/)





## Help.
