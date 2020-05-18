# Helm Commands.





## Contents at a Glance.
* [About.](#about)
* [Documentation.](#documentation)
* [Help.](#help)





## About.





## Documentation.





## version 2. ... 

| Key/Command                                                        | Description                                                                                                        |
| ------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| helm help                                                          |                                                                                                                    |
| helm version --short --client                                      |                                                                                                                    |
| helm version                                                       |                                                                                                                    |
| helm install                                                       |                                                                                                                    |
| helm install [nameApp] --name [nameAppInTheSystem]                 |                                                                                                                    |
| helm fetch                                                         |                                                                                                                    |
| helm init                                                          |                                                                                                                    |
| helm status                                                        |                                                                                                                    |
| helm search                                                        |                                                                                                                    |
| helm repo update                                                   |                                                                                                                    |
| helm upgrade                                                       |                                                                                                                    |
| helm rollback                                                      |                                                                                                                    |
| helm delete                                                        |                                                                                                                    |
| helm reset                                                         |                                                                                                                    |
|                                                                    |                                                                                                                    |





## version 2. ...
| Key/Command                                                                                                  | Description                                                                                                        |
| ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| kubectl -n kube-system create serviceaccount tiller                                                          |                                                                                                                    |
| kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller     |                                                                                                                    |
| kubectl get clusterrolebindings tiller                                                                       |                                                                                                                    |
|                                                                                                              |                                                                                                                    |





## version 3. ...

| Key/Command                                                                         | Description                                                                                                        |
| ----------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| helm version                                                                        |                                                                                                                    |
| helm version --short --client                                                       |                                                                                                                    |
| helm plugin list                                                                    |                                                                                                                    |
| helm plugin install [namePlugin]                                                    |                                                                                                                    |
| helm [namePlugin] help                                                              |                                                                                                                    |
| helm install [nameAppInTheSystem] [nameApp]                                         |                                                                                                                    |
| helm uninstall [namePlugin]                                                         |                                                                                                                    |
| helm search repo [nameRepo]                                                         |                                                                                                                    |
| helm repo add stable https://kubernetes-charts.storage.googleapis.com/              | Add a chart repository.                                                                                            |
| helm repo update                                                                    |                                                                                                                    |
| helm list                                                                           |                                                                                                                    |
| helm show chart [nameChart]                                                         |                                                                                                                    |
|                                                                                     |                                                                                                                    |




## Help.
