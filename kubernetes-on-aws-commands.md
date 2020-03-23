# Kubernetes Cluster on Amazon Web Services. Commands.





## Contents at a Glance.
* [About.](#about)
* [Documentation.](#documentation)
* [Commands.](#commands)
* [Help.](#help)





## About.





## Documentation.





## Commands.

| Key/Command                                                        | Description                                                                     |
| ------------------------------------------------------------------ | ------------------------------------------------------------------------------- |
| pip3 install awscli --upgrade                                      | Install and upgrade awscli.                                                     |
| pip3 install awscli --upgrade --user                               |                                                                                 |
| eksctl version                                                     | Show version of eksctl.                                                         |
| export AWS_ACCESS_KEY_ID=xxxxxxxxxxxxx                             |                                                                                 |
| export AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxxx                         |                                                                                 |
| export AWS_DEFAULT_REGION=xxxxxxxxxxxxx                            |                                                                                 |
| eksctl create cluster --name [nameCluster]                         | Create and run K8s Cluster on AWS.                                              |
| eksctl create cluster -f [yamlFileOfClusterConfiguration]          | Create and run K8s Cluster on AWS using "Yaml File Cluster Configuration".      |
| eksctl delete cluster --name [nameCluster]                         | Delete K8s Cluster on AWS.                                                      |
| eksctl delete cluster -f [yamlFileOfClusterConfiguration]          | Delete K8s Cluster on AWS using "Yaml File Cluster Configuration".              |


## Help.
