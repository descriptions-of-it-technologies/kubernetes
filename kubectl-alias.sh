#!/bin/bash

# ======================================================================================================================
# ================================================================================================================ General
# ======================================================================================================================
alias k="       kubectl"

alias wkga="watch     kubectl get pods,replicasets,deployments,services,ingress,serviceaccounts,configmaps,secrets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,resourcequotas,limitranges,daemonsets,statefulsets,quota,roles,rolebinding,networkpolicy,nodes,namespaces -o wide"
alias wkgan="watch    kubectl get pods,replicasets,deployments,services,ingress,serviceaccounts,configmaps,secrets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,resourcequotas,limitranges,daemonsets,statefulsets,quota,roles,rolebinding,networkpolicy,nodes,namespaces -o wide --namespace"
alias wkgaan="watch   kubectl get pods,replicasets,deployments,services,ingress,serviceaccounts,configmaps,secrets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,resourcequotas,limitranges,daemonsets,statefulsets,quota,roles,rolebinding,networkpolicy,nodes,namespaces -o wide --all-namespaces"
alias wkgas="watch    kubectl get pods,replicasets,deployments,services,ingress,serviceaccounts,configmaps,secrets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,resourcequotas,limitranges,daemonsets,statefulsets,quota,roles,rolebinding,networkpolicy,nodes,namespaces -o wide --selector"

alias c="clear"

#alias g='  bash /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/get-the-most-used-information-about-kubernetes-objects.sh'
#alias gn=' bash /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/get-the-most-used-information-about-kubernetes-objects-from-namespace.sh'
#alias ga=' bash /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/get-all-information-about-kubernetes-objects.sh'
#alias gan='bash /home/trl/IdeaProjects/Programming-Training-And-Practice/kubernetes-main-information/get-all-information-about-kubernetes-objects-for-namespace.sh'


# ======================================================================================================================
# ================================================================================================================ Apply
# ======================================================================================================================
alias ka="      kubectl apply"
alias kaf="     kubectl apply -f"



# ======================================================================================================================
# ================================================================================================================ Attach
# ======================================================================================================================

# ======================================================================== apiservices

# ======================================================================== bindings

# ======================================================================== configmaps
# ======================================================================== cronjobs
# ======================================================================== csinodes
# ======================================================================== componentstatuses
# ======================================================================== clusterroles
# ======================================================================== clusterrolebindings
# ======================================================================== customresourcedefinitions
# ======================================================================== controllerrevisions
# ======================================================================== certificatesigningrequests
# ======================================================================== csidrivers

# ======================================================================== deployments
# ======================================================================== daemonsets

# ======================================================================== endpoints
# ======================================================================== events
# ======================================================================== endpointslices
# ======================================================================== events

# ======================================================================== horizontalpodautoscalers

# ======================================================================== ingresses

# ======================================================================== jobs

# ======================================================================== limitranges
# ======================================================================== localsubjectaccessreviews
# ======================================================================== leases

# ======================================================================== mutatingwebhookconfigurations

# ======================================================================== nodes
# ======================================================================== namespaces
# ======================================================================== networkpolicies

# ======================================================================== pods
# ======================================================================== persistentvolumes
# ======================================================================== persistentvolumeclaims
# ======================================================================== podtemplates
# ======================================================================== poddisruptionbudgets
# ======================================================================== priorityclasses
# ======================================================================== podsecuritypolicies

# ======================================================================== replicasets
# ======================================================================== replicationcontrollers
# ======================================================================== resourcequotas
# ======================================================================== roles
# ======================================================================== rolebindings
# ======================================================================== runtimeclasses

# ======================================================================== services
# ======================================================================== serviceaccounts
# ======================================================================== secrets
# ======================================================================== statefulsets
# ======================================================================== selfsubjectaccessreviews
# ======================================================================== selfsubjectrulesreviews
# ======================================================================== subjectaccessreviews
# ======================================================================== storageclasses

# ======================================================================== tokenreviews

# ======================================================================== validatingwebhookconfigurations
# ======================================================================== volumeattachments



# ======================================================================================================================
# ================================================================================================================ Create
# ======================================================================================================================
alias kc="      kubectl create"
alias kcf="     kubectl create -f"

# ======================================================================== apiservices

# ======================================================================== bindings

# ======================================================================== configmaps
alias kccm="    kubectl create configmap"
# ======================================================================== cronjobs
# ======================================================================== csinodes
# ======================================================================== componentstatuses
# ======================================================================== clusterroles
# ======================================================================== clusterrolebindings
# ======================================================================== customresourcedefinitions
# ======================================================================== controllerrevisions
# ======================================================================== certificatesigningrequests
# ======================================================================== csidrivers

# ======================================================================== deployments
# ======================================================================== daemonsets

# ======================================================================== endpoints
# ======================================================================== events
# ======================================================================== endpointslices
# ======================================================================== events

# ======================================================================== horizontalpodautoscalers

# ======================================================================== ingresses

# ======================================================================== jobs

# ======================================================================== limitranges
# ======================================================================== localsubjectaccessreviews
# ======================================================================== leases

# ======================================================================== mutatingwebhookconfigurations

# ======================================================================== nodes
# ======================================================================== namespaces
alias kcns="    kubectl create namespace"
# ======================================================================== networkpolicies

# ======================================================================== pods
# ======================================================================== persistentvolumes
# ======================================================================== persistentvolumeclaims
# ======================================================================== podtemplates
# ======================================================================== poddisruptionbudgets
# ======================================================================== priorityclasses
# ======================================================================== podsecuritypolicies

# ======================================================================== replicasets
# ======================================================================== replicationcontrollers
# ======================================================================== resourcequotas
# ======================================================================== roles
# ======================================================================== rolebindings
# ======================================================================== runtimeclasses

# ======================================================================== services
# ======================================================================== serviceaccounts
alias kcsa="    kubectl create serviceaccount"
# ======================================================================== secrets
# ======================================================================== statefulsets
# ======================================================================== selfsubjectaccessreviews
# ======================================================================== selfsubjectrulesreviews
# ======================================================================== subjectaccessreviews
# ======================================================================== storageclasses

# ======================================================================== tokenreviews

# ======================================================================== validatingwebhookconfigurations
# ======================================================================== volumeattachments



# ======================================================================================================================
# ================================================================================================================ Config
# ======================================================================================================================
alias kconf="   kubectl config"

alias kconfcc=" kubectl config current-context"
alias kconfdc=" kubectl config delete-context"
alias kconfgc=" kubectl config get-contexts"
alias kconfn="  kubectl config set-context $(kubectl config current-context) --namespace"
alias kconfsc=" kubectl config set-context"
alias kconfuc=" kubectl config use-context"



# ======================================================================================================================
# ================================================================================================================ Cordon
# ======================================================================================================================




# ======================================================================================================================
# ================================================================================================================ Cluster-info
# ======================================================================================================================
alias kci="     kubectl cluster-info"



# ======================================================================================================================
# ================================================================================================================ Describe
# ======================================================================================================================
alias kd="      kubectl describe"

# ======================================================================== apiservices

# ======================================================================== bindings

# ======================================================================== configmaps
alias kdcm="    kubectl describe configmap"
# ======================================================================== cronjobs
# ======================================================================== csinodes
# ======================================================================== componentstatuses
# ======================================================================== clusterroles
# ======================================================================== clusterrolebindings
# ======================================================================== customresourcedefinitions
# ======================================================================== controllerrevisions
# ======================================================================== certificatesigningrequests
# ======================================================================== csidrivers

# ======================================================================== deployments
alias kdd="     kubectl describe deployment"
# ======================================================================== daemonsets

# ======================================================================== endpoints
# ======================================================================== events
# ======================================================================== endpointslices
# ======================================================================== events

# ======================================================================== horizontalpodautoscalers

# ======================================================================== ingresses
alias kdi="     kubectl describe ingress"
alias kdin="    kubectl describe ingress --namespace"

# ======================================================================== jobs

# ======================================================================== limitranges
# ======================================================================== localsubjectaccessreviews
# ======================================================================== leases

# ======================================================================== mutatingwebhookconfigurations

# ======================================================================== nodes
alias kdn="     kubectl describe node"
# ======================================================================== namespaces
alias kdns="    kubectl describe namespace"
# ======================================================================== networkpolicies
alias kdnetpol="     kubectl describe networkpolicy"
alias kdnetpoln="    kubectl describe networkpolicy --namespace"

# ======================================================================== pods
alias kdp="     kubectl describe pods"
alias kdpn="    kubectl describe pods --namespace"
# ======================================================================== persistentvolumes
alias kdpv="    kubectl describe persistentvolume"
# ======================================================================== persistentvolumeclaims
alias kdpvc="   kubectl describe persistentvolumeclaim"
# ======================================================================== podtemplates
# ======================================================================== poddisruptionbudgets
# ======================================================================== priorityclasses
# ======================================================================== podsecuritypolicies

# ======================================================================== replicasets
alias kdrs="    kubectl describe replicaset"
# ======================================================================== replicationcontrollers
# ======================================================================== resourcequotas
# ======================================================================== roles
alias kdr="     kubectl describe roles"
# ======================================================================== rolebindings
alias kdrb="    kubectl describe rolebinding"
# ======================================================================== runtimeclasses

# ======================================================================== services
alias kdsvc="   kubectl describe service"
# ======================================================================== secrets
alias kdsec="   kubectl describe secret"
# ======================================================================== serviceaccounts
# ======================================================================== statefulsets
alias kdsts="   kubectl describe statefulset"
# ======================================================================== selfsubjectaccessreviews
# ======================================================================== selfsubjectrulesreviews
# ======================================================================== subjectaccessreviews
# ======================================================================== storageclasses

# ======================================================================== tokenreviews

# ======================================================================== validatingwebhookconfigurations
# ======================================================================== volumeattachments



# ======================================================================================================================
# ================================================================================================================ Delete
# ======================================================================================================================
alias kdel="    kubectl delete"
alias kdelf="   kubectl delete -f"

alias kdeln="   kubectl delete node"

alias kdelp="   kubectl delete pods"

alias kdelrs="  kubectl delete replicaset"

alias kdeld="   kubectl delete deployment"

alias kdelns="  kubectl delete namespace"

alias kdelsvc=" kubectl delete service"

alias kdelcm="  kubectl delete configmap"

alias kdelsec=" kubectl delete secret"

alias kdelpvc=" kubectl delete persistentvolumeclaim"

alias kdelpv="  kubectl delete persistentvolume"

alias kdeli="   kubectl delete ingress"

alias kdelss="  kubectl delete statefulset"

alias kdelnetpol="  kubectl delete networkpolicy"



# ======================================================================================================================
# ================================================================================================================ Edit
# ======================================================================================================================
alias ke="      kubectl edit"

alias ken="     kubectl edit node"

alias kep="     kubectl edit pods"

alias kers="    kubectl edit replicaset"

alias ked="     kubectl edit deployment"

alias kens="    kubectl edit namespace"

alias kepvc="   kubectl edit persistentvolumeclaim"

alias kei="     kubectl edit ingress"

alias kesvc="   kubectl edit service"

alias kecm="    kubectl edit configmap"

alias kess="    kubectl edit statefulset"

alias kenetpol="    kubectl edit networkpolicy"



# ======================================================================================================================
# ================================================================================================================ Explain
# ======================================================================================================================
alias kex="     kubectl explain"

alias kexn="    kubectl explain node.spec"

alias kexp="    kubectl explain pod.spec"

alias kexrs="   kubectl explain replicaset.spec"

alias kexd="    kubectl explain deployment.spec"



# ======================================================================================================================
# ================================================================================================================ Get
# ======================================================================================================================
alias kg='      kubectl get -o wide'

#kubectl get deployments,services,ingresses,pods,nodes,namespaces,replicasets,configmaps,secrets,persistentvolumeclaims,persistentvolumes,serviceaccounts,networkpolicies,roles,rolebindings,clusterroles,clusterrolebindings,jobs,cronjobs,daemonsets,limitranges,statefulsets,resourcequotas,apiservices,csinodes,componentstatuses,customresourcedefinitions,controllerrevisions,certificatesigningrequests,csidrivers,endpoints,events,endpointslices,horizontalpodautoscalers,leases,mutatingwebhookconfigurations,podtemplates,poddisruptionbudgets,priorityclasses,podsecuritypolicies,replicationcontrollers,runtimeclasses,storageclasses,validatingwebhookconfigurations,volumeattachments

alias kga="     kubectl get pods,replicasets,deployments,services,ingress,serviceaccounts,configmaps,secrets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,resourcequotas,limitranges,daemonsets,statefulsets,quota,roles,rolebinding,networkpolicy,nodes,namespaces -o wide"
alias kgan="    kubectl get pods,replicasets,deployments,services,ingress,serviceaccounts,configmaps,secrets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,resourcequotas,limitranges,daemonsets,statefulsets,quota,roles,rolebinding,networkpolicy,nodes,namespaces -o wide --namespace"
alias kgaan="   kubectl get pods,replicasets,deployments,services,ingress,serviceaccounts,configmaps,secrets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,resourcequotas,limitranges,daemonsets,statefulsets,quota,roles,rolebinding,networkpolicy,nodes,namespaces -o wide --all-namespaces"
alias kgas="    kubectl get pods,replicasets,deployments,services,ingress,serviceaccounts,configmaps,secrets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,resourcequotas,limitranges,daemonsets,statefulsets,quota,roles,rolebinding,networkpolicy,nodes,namespaces -o wide --selector"

# ======================================================================== apiservices

# ======================================================================== bindings

# ======================================================================== configmaps
alias kgcm="    kubectl get configmaps -o wide"
alias kgcmn="   kubectl get configmaps -o wide --namespace"
alias kgcman="  kubectl get configmaps -o wide --all-namespaces"
alias kgcmw="   kubectl get configmaps -o wide --watch"
# ======================================================================== cronjobs
# ======================================================================== csinodes
# ======================================================================== componentstatuses
# ======================================================================== clusterroles
# ======================================================================== clusterrolebindings
# ======================================================================== customresourcedefinitions
# ======================================================================== controllerrevisions
# ======================================================================== certificatesigningrequests
# ======================================================================== csidrivers

# ======================================================================== deployments
alias kgd="     kubectl get deployments -o wide"
alias kgdn="    kubectl get deployments -o wide --namespace"
alias kgdan="   kubectl get deployments -o wide --all-namespaces"
alias kgdw="    kubectl get deployments -o wide --watch"
# ======================================================================== daemonsets

# ======================================================================== endpoints
# ======================================================================== events
# ======================================================================== endpointslices
# ======================================================================== events

# ======================================================================== horizontalpodautoscalers

# ======================================================================== ingresses
alias kgi="     kubectl get ingress -o wide"
alias kgin="    kubectl get ingress -o wide --namespace"
alias kgian="   kubectl get ingress -o wide --all-namespaces"
alias kgiw="    kubectl get ingress -o wide --watch"

# ======================================================================== jobs

# ======================================================================== limitranges
# ======================================================================== localsubjectaccessreviews
# ======================================================================== leases

# ======================================================================== mutatingwebhookconfigurations

# ======================================================================== nodes
alias kgn="     kubectl get nodes -o wide "
# ======================================================================== namespaces
alias kgns="    kubectl get namespace -o wide"
# ======================================================================== networkpolicies
alias kgnetpol="    kubectl get networkpolicy -o wide"
alias kgnetpoln="   kubectl get networkpolicy -o wide --namespace"
alias kgnetpolan="  kubectl get networkpolicy -o wide --all-namespaces"
alias kgnetpolw="   kubectl get networkpolicy -o wide --watch"

# ======================================================================== pods
alias kgp='     kubectl get pods -o wide'
alias kgpn='    kubectl get pods -o wide --namespace'
alias kgpan="   kubectl get pods -o wide --all-namespaces"
alias kgpw="    kubectl get pods -o wide --watch"
# ======================================================================== persistentvolumes
alias kgpv="    kubectl get persistentvolume -o wide"
alias kgpvn="   kubectl get persistentvolume -o wide --namespace"
alias kgpvan="  kubectl get persistentvolume -o wide --all-namespaces"
alias kgpvw="   kubectl get persistentvolume -o wide --watch"
# ======================================================================== persistentvolumeclaims
alias kgpvc="   kubectl get persistentvolumeclaims -o wide"
alias kgpvcn="  kubectl get persistentvolumeclaims -o wide --namespace"
alias kgpvcan=" kubectl get persistentvolumeclaims -o wide --all-namespaces"
alias kgpvcw="  kubectl get persistentvolumeclaims -o wide --watch"
# ======================================================================== podtemplates
# ======================================================================== poddisruptionbudgets
# ======================================================================== priorityclasses
# ======================================================================== podsecuritypolicies

# ======================================================================== replicasets
alias kgrs="    kubectl get replicasets -o wide"
alias kgrsn="   kubectl get replicasets -o wide --namespace"
alias kgrsan="  kubectl get replicasets -o wide --all-namespaces"
alias kgrsw="   kubectl get replicasets -o wide --watch"
# ======================================================================== replicationcontrollers
# ======================================================================== resourcequotas
# ======================================================================== roles
# ======================================================================== rolebindings
# ======================================================================== runtimeclasses

# ======================================================================== services
alias kgsvc="   kubectl get service -o wide"
alias kgsvcn="  kubectl get service -o wide --namespace"
alias kgsvcan=" kubectl get service -o wide --all-namespaces"
alias kgsvcw="  kubectl get service -o wide --watch"
# ======================================================================== serviceaccounts
alias kgsa="    kubectl get serviceaccount -o wide"
alias kgsan="   kubectl get serviceaccount -o wide --namespace"
alias kgsaan="  kubectl get serviceaccount -o wide --all-namespaces"
alias kgsaw="   kubectl get serviceaccount -o wide --watch"
# ======================================================================== secrets
alias kgsec="   kubectl get secret -o wide"
alias kgsecn="  kubectl get secret -o wide --namespace"
alias kgsecan=" kubectl get secret -o wide --all-namespaces"
alias kgsecw="  kubectl get secret -o wide --watch"
# ======================================================================== statefulsets
alias kgss="    kubectl get statefulset -o wide"
alias kgssn="   kubectl get statefulset -o wide --namespace"
alias kgssan="  kubectl get statefulset -o wide --all-namespaces"
alias kgssw="   kubectl get statefulset -o wide --watch"
# ======================================================================== selfsubjectaccessreviews
# ======================================================================== selfsubjectrulesreviews
# ======================================================================== subjectaccessreviews
# ======================================================================== storageclasses

# ======================================================================== tokenreviews

# ======================================================================== validatingwebhookconfigurations
# ======================================================================== volumeattachments



# ======================================================================================================================
# ================================================================================================================ Log
# ======================================================================================================================
alias kl="      kubectl logs"
alias klf="     kubectl logs -f"

alias kl1h="    kubectl logs --since 1h"
alias kl1m="    kubectl logs --since 1m"
alias kl1s="    kubectl logs --since 1s"
alias klf1h="   kubectl logs --since 1h -f"
alias klf1m="   kubectl logs --since 1m -f"
alias klf1s="   kubectl logs --since 1s -f"



# ======================================================================================================================
# ================================================================================================================ Port-Forward
# ======================================================================================================================
alias kpf="     kubectl port-forward"



# ======================================================================================================================
# ================================================================================================================ Rollout
# ======================================================================================================================
alias krl="     kubectl rollout"

alias krls="    kubectl rollout status"
alias krlsd="   kubectl rollout status deployment"
alias krlsss="  kubectl rollout status statefulset"

alias krlh="    kubectl rollout history"
alias krlhd="   kubectl rollout history deployment"

alias krlu="    kubectl rollout undo"
alias krlud="   kubectl rollout undo deployment"



# ======================================================================================================================
# ================================================================================================================ Run
# ======================================================================================================================
alias kr="      kubectl run"



# ======================================================================================================================
# ================================================================================================================ Scale
# ======================================================================================================================
alias ks="      kubectl scale"

alias ksd="     kubectl scale deployment"
alias ksss="    kubectl scale statefulset"
