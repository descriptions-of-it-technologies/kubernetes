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
* [Kind Main Information.](https://github.com/Programming-Training-And-Practice/kind-main-information)
* [Minikube Main Information.](https://github.com/Programming-Training-And-Practice/minikube-main-information)
* [Helm Main Information.](https://github.com/Programming-Training-And-Practice/helm-main-information)
* [Rancher Main Information.](https://github.com/Programming-Training-And-Practice/rancher-main-information)
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
