# Kubernetes Main Information.





## Contents at a Glance.
* [About.](#about)
* [Documentation.](#documentation)
* [Kubernetes Main Concepts.](#kubernetes-main-concepts)
* [Kubernetes Features.](#kubernetes-features)
* [Kubernetes Commands.](kubernetes-commands.md)
* [What Problems Does Kubernetes Aim to Solve?](#what-problems-does-kubernetes-aim-to-solve)
* [What problems can Kubernetes not solve?](#what-problems-can-kubernetes-not-solve)
* [Docker Image Registry.](#docker-image-registry)
* [Kubernetes Cloud Service.](#kubernetes-cloud-services)
* [Info.](#info)
* [Pros.](#pros)
* [Managers Kubernetes Configuration.](#managers-kubernetes-configuration)
* [Metrics and Alerting.](#metrics-and-alerting)
* [Handling Logging.](#handling-logging)
* [Cloud Native Computing Foundation (CNCF).](#cloud-native-computing-foundation-cncf)
* [Minikube Main Information.](minikube-main-information.md)
* [Minikube Commands.](minikube-commands.md)
* [Kubernetes on Amazon Web Services.](kubernetes-on-aws.md)
* [Kubernetes on Google Kubernetes Engine.](kubernetes-on-gke.md)
* [Jenkins Plugin for Kubernetes.](#jenkins-plugin-for-kubernetes)
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





## Docker Image Registry.
* [DockerHub.]()
* [AWS Container Registry (ECR).]()
* [Google Container Registry.]()
* [Azure Container Registry.]()





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





## Managers Kubernetes Configuration.
* [Helm.](https://helm.sh/)
* [Envoy.](https://www.envoyproxy.io/)





## Metrics and Alerting.
* [Prometheus.](https://prometheus.io/)





## Handling Logging.
* [Fluentd.](https://www.fluentd.org/)





# Cloud Native Computing Foundation (CNCF).
* [Cloud Native Computing Foundation (CNCF)](https://www.cncf.io/)
* [Project Services and Maturity Levels.](https://www.cncf.io/projects/)





##  Alternatives Kubernetes.
* Netflix OSS and Spring Cloud.
* Docker Swarm.
* Marathon on Apache Mesos.




## Jenkins Plugin for Kubernetes.
* [1.](https://plugins.jenkins.io/kubernetes/)





## Articles.
* [Kubernetes — What Is It, What Problems Does It Solve and How Does It Compare With Alternatives?](https://medium.com/@srikanth.k/kubernetes-what-is-it-what-problems-does-it-solve-how-does-it-compare-with-its-alternatives-937fe80b754f)
* [How I passed the CKA (Certified Kubernetes Administrator) Exam](https://medium.com/platformer-blog/how-i-passed-the-cka-certified-kubernetes-administrator-exam-8943aa24d71d)



## Conferences.





## Conference Speakers.





## Courses.
* [Kubernetes на Русском Языке.](https://www.youtube.com/playlist?list=PLg5SS_4L6LYvN1RqaVesof8KAf-02fJSi)
* [Certified Kubernetes Administrator (CKA) with Practice Tests](https://kodekloud.com/p/certified-kubernetes-administrator-with-practice-tests)





## Books.
* [Kubernetes in Action.](https://www.google.com/search?q=kubernetes+in+action&oq=Kubernetes+in+Action&aqs=chrome.0.0l7j69i60.339j0j4&sourceid=chrome&ie=UTF-8)





## Sites for Practices.
* [Katacoda](https://www.katacoda.com/)





## Help.
