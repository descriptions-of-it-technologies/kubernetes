#!/bin/bash

# ======================================================================================================================
# ================================================================================================================ General
# ======================================================================================================================
alias k="       kubectl"

alias wkg="watch     kubectl get nodes,pods,replicasets,deployments,resourcequotas,limitranges,configmaps,secrets,serviceaccounts,services,daemonsets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,ingress,statefulsets,quota -o wide"
alias wkgn="watch    kubectl get nodes,pods,replicasets,deployments,resourcequotas,limitranges,configmaps,secrets,serviceaccounts,services,daemonsets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,ingress,statefulsets,quota -o wide --namespace"
alias wkga="watch    kubectl get nodes,pods,replicasets,deployments,namespaces,resourcequotas,limitranges,configmaps,secrets,serviceaccounts,services,daemonsets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,ingress,statefulsets,quota -o wide"
alias wkgan="watch   kubectl get nodes,pods,replicasets,deployments,namespaces,resourcequotas,limitranges,configmaps,secrets,serviceaccounts,services,daemonsets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,ingress,statefulsets,quota -o wide --all-namespaces"

alias c="clear"


# ======================================================================================================================
# ================================================================================================================ Apply
# ======================================================================================================================
alias ka="      kubectl apply"
alias kaf="     kubectl apply -f"



# ======================================================================================================================
# ================================================================================================================ Attach
# ======================================================================================================================




# ======================================================================================================================
# ================================================================================================================ Create
# ======================================================================================================================
alias kc="      kubectl create"

alias kcf="     kubectl create -f"

alias kcns="    kubectl create namespace"

alias kccm="    kubectl create configmap"

alias kcsa="    kubectl create serviceaccount"



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

alias kdn="     kubectl describe node"

alias kdp="     kubectl describe pods"
alias kdpn="     kubectl describe pods --namespace"

alias kdrs="    kubectl describe replicaset"

alias kdd="     kubectl describe deployment"

alias kdns="    kubectl describe namespace"

alias kdsec="   kubectl describe secret"

alias kdsvc="   kubectl describe service"

alias kdcm="    kubectl describe configmap"

alias kdss="    kubectl describe statefulset"

alias kdpvc="   kubectl describe persistentvolumeclaim"

alias kdpv="    kubectl describe persistentvolume"

alias kdi="     kubectl describe ingress"



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
alias kg='      kubectl get'

alias kga="     kubectl get all -o wide"
alias kgan="    kubectl get all -o wide --namespace"
alias kgaan="   kubectl get all -o wide --all-namespaces"
alias kgas="    kubectl get all -o wide --selector"

alias kgn="     kubectl get nodes -o wide "

alias kgns="    kubectl get namespace -o wide"

alias kgp='     kubectl get pods -o wide'
alias kgpn='    kubectl get pods -o wide --namespace'
alias kgpan="   kubectl get pods -o wide --all-namespaces"
alias kgpw="    kubectl get pods -o wide --watch"

alias kgrs="    kubectl get replicasets -o wide"
alias kgrsn="   kubectl get replicasets -o wide --namespace"
alias kgrsan="  kubectl get replicasets -o wide --all-namespaces"
alias kgrsw="   kubectl get replicasets -o wide --watch"

alias kgd="     kubectl get deployments -o wide"
alias kgdn="    kubectl get deployments -o wide --namespace"
alias kgdan="   kubectl get deployments -o wide --all-namespaces"
alias kgdw="    kubectl get deployments -o wide --watch"

alias kgsvc="   kubectl get service -o wide"
alias kgsvcn="  kubectl get service -o wide --namespace"
alias kgsvcan=" kubectl get service -o wide --all-namespaces"
alias kgsvcw="  kubectl get service -o wide --watch"

alias kgcm="    kubectl get configmaps -o wide"
alias kgcmn="   kubectl get configmaps -o wide --namespace"
alias kgcman="  kubectl get configmaps -o wide --all-namespaces"
alias kgcmw="   kubectl get configmaps -o wide --watch"

alias kgsec="   kubectl get secret -o wide"
alias kgsecn="  kubectl get secret -o wide --namespace"
alias kgsecan=" kubectl get secret -o wide --all-namespaces"
alias kgsecw="  kubectl get secret -o wide --watch"

alias kgpvc="   kubectl get persistentvolumeclaims -o wide"
alias kgpvcn="  kubectl get persistentvolumeclaims -o wide --namespace"
alias kgpvcan=" kubectl get persistentvolumeclaims -o wide --all-namespaces"
alias kgpvcw="  kubectl get persistentvolumeclaims -o wide --watch"

alias kgpv="    kubectl get persistentvolume -o wide"
alias kgpvn="   kubectl get persistentvolume -o wide --namespace"
alias kgpvan="  kubectl get persistentvolume -o wide --all-namespaces"
alias kgpvw="   kubectl get persistentvolume -o wide --watch"

alias kgi="     kubectl get ingress -o wide"
alias kgin="    kubectl get ingress -o wide --namespace"
alias kgian="   kubectl get ingress -o wide --all-namespaces"
alias kgiw="    kubectl get ingress -o wide --watch"

alias kgss="    kubectl get statefulset -o wide"
alias kgssn="   kubectl get statefulset -o wide --namespace"
alias kgssan="  kubectl get statefulset -o wide --all-namespaces"
alias kgssw="   kubectl get statefulset -o wide --watch"

alias kgsa="    kubectl get serviceaccount -o wide"
alias kgsan="   kubectl get serviceaccount -o wide --namespace"
alias kgsaan="  kubectl get serviceaccount -o wide --all-namespaces"
alias kgsaw="   kubectl get serviceaccount -o wide --watch"



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
