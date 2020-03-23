# Kubernetes Cluster on Google Kubernetes Engine. Commands.





## Contents at a Glance.
* [About.](#about)
* [Documentation.](#documentation)
* [Commands.](#commands)
* [Help.](#help)





## About.





## Documentation.





## Commands.

| Key/Command                                                                 | Description                                                                     |
| --------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| gcloud version                                                              | Show version of gcloud.                                                         |
| gcloud init                                                                 | Configure gcloud with Google Cloud.                                             |
| gcloud services enable container.googleapis.com                             | Enable creating K8s with Google Cloud project.                                  |
| gcloud container cluster create [nameCluster]                               | Create and run K8s Cluster with default parameters.                             |
| gcloud container cluster create [nameCluster] --num-nodes=[numberOfNods]    | Create and run K8s Cluster with your parameters.                                |
| gcloud container cluster get-credentials [nameCluster]                      | Configure kubectl for working with K8s Cluster.                                 |
| gcloud container cluster delete [nameCluster]                               | Delete K8s Cluster.                                                             |

## Help.
