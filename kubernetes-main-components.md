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





## cluster





## node





## deployment





## pod





## service





## replicaset





## namespace





## configmap





## secrets





## context





## daemonset





## job
* [completions.]()
* [parallelism.]()
* [backoffLimit]()
* [activeDeadlineSeconds]()





## cronjob
* [successfulJobHistoryLimit]()
* [failedJobsHistoryLimit]()
* [suspending cron job]()
* [concurrencyPolicy]()
* [idempotency]()





## initcontainer





## persistent volume
### Reclaim policy.
* [Retain]()
* [Recycle(Deprecated)]()
* [Delete]()
* hostpath in generally is not used in a production environment, because of hostpath available only on one node.
* hostpath deleter only supports /tmp/.

### Access mode.
* [RWO]()
* [RWM]()
* [RO]()





## persistent volume claim





## Help.
