#!/bin/bash

# ======================================================================================================================
# ================================================================================================================ General
# ======================================================================================================================
alias k="kubectl"
alias wkg="watch kubectl get nodes,pods,replicasets,deployments,namespaces,resourcequotas,limitranges,configmaps,secrets,serviceaccounts,services,daemonsets,jobs,cronjobs,persistentvolumes,persistentvolumeclaims,ingress,statefulsets,quota -o wide"



# ======================================================================================================================
# ================================================================================================================ Apply
# ======================================================================================================================
alias ka="kubectl apply"
alias kaf="kubectl apply -f"



# ======================================================================================================================
# ================================================================================================================ Attach
# ======================================================================================================================




# ======================================================================================================================
# ================================================================================================================ Create
# ======================================================================================================================
alias kcf="kubectl create -f"



# ======================================================================================================================
# ================================================================================================================ Config
# ======================================================================================================================
alias kconf="kubectl config"

alias kconfcc="kubectl config current-context"
alias kconfdc="kubectl config delete-context"
alias kconfgc="kubectl config get-contexts"
alias kconfn="kubectl config set-context $(kubectl config current-context) --namespace"
alias kconfsc="kubectl config set-context"
alias kconfuc="kubectl config use-context"



# ======================================================================================================================
# ================================================================================================================ Cordon
# ======================================================================================================================




# ======================================================================================================================
# ================================================================================================================ Cluster-info
# ======================================================================================================================




# ======================================================================================================================
# ================================================================================================================ Describe
# ======================================================================================================================
alias kd="kubectl describe"

alias kdn="kubectl describe node"
alias kdp="kubectl describe pods"
alias kdrs="kubectl describe replicaset"
alias kdd="kubectl describe deployment"
alias kdns="kubectl describe namespace"
alias kdsec="kubectl describe secret"
alias kds="kubectl describe svc"
alias kdcm="kubectl describe configmap"
alias kdi="kubectl describe ingress"
alias kdss="kubectl describe statefulset"
alias kdpvc="kubectl describe pvc"



# ======================================================================================================================
# ================================================================================================================ Delete
# ======================================================================================================================
alias kdel="kubectl delete"
alias kdelf="kubectl delete -f"

alias kdeln="kubectl delete node"

alias kdelp="kubectl delete pods"

alias kdelrs="kubectl delete replicaset"

alias kdeld="kubectl delete deployment"

alias kdelns="kubectl delete namespace"

alias kdels="kubectl delete service"

alias kdelcm="kubectl delete configmap"

alias kdelsec="kubectl delete secret"

alias kdelpvc="kubectl delete persistentvolumeclaim"

alias kdeli="kubectl delete ingress"

alias kdelss="kubectl delete statefulset"



# ======================================================================================================================
# ================================================================================================================ Edit
# ======================================================================================================================
alias ke="kubectl edit"

alias ken="kubectl edit node"

alias kep="kubectl edit pods"

alias kers="kubectl edit replicaset"

alias ked="kubectl edit deployment"

alias kens="kubectl edit namespace"

alias kepvc="kubectl edit persistentvolumeclaim"

alias kei="kubectl edit ingress"

alias kes="kubectl edit service"

alias kecm="kubectl edit configmap"

alias kess="kubectl edit statefulset"



# ======================================================================================================================
# ================================================================================================================ Get
# ======================================================================================================================
alias kg="kubectl get"

alias kgaa="kubectl get all --all-namespaces"

alias kgn="kubectl get nodes"

alias kgp="kubectl get pods"
alias kgpa="kubectl get pods --all-namespaces"
alias kgpwide="kubectl get pods -o wide"
alias kgpw="kubectl get pods --watch"

alias kgrs="kubectl get replicaset"

alias kgd="kubectl get deployment"
alias kgda="kubectl get deployment --all-namespaces"
alias kgdw="kubectl get deployment --watch"
alias kgdwide="kubectl get deployment -o wide"

alias kgnearc="kubectl get namespaces"

alias kgs="kubectl get service"
alias kgsa="kubectl get service --all-namespaces"
alias kgswide="kubectl get service -o wide"
alias kgsw="kubectl get service --watch"


alias kgcm="kubectl get configmaps"
alias kgcma="kubectl get configmaps --all-namespaces"

alias kgsec="kubectl get secret"
alias kgseca="kubectl get secret --all-namespaces"

alias kgpvc="kubectl get persistentvolumeclaims"
alias kgpvca="kubectl get persistentvolumeclaims --all-namespaces"
alias kgpvcw="kubectl get persistentvolumeclaims --watch"

alias kgi="kubectl get ingress"
alias kgia="kubectl get ingress --all-namespaces"

alias kgss="kubectl get statefulset"
alias kgssa="kubectl get statefulset --all-namespaces"
alias kgsswide="kubectl get statefulset -o wide"
alias kgssw="kubectl get statefulset --watch"



# ======================================================================================================================
# ================================================================================================================ Log
# ======================================================================================================================
alias kl="kubectl logs"
alias klf="kubectl logs -f"

alias kl1h="kubectl logs --since 1h"
alias kl1m="kubectl logs --since 1m"
alias kl1s="kubectl logs --since 1s"
alias klf1h="kubectl logs --since 1h -f"
alias klf1m="kubectl logs --since 1m -f"
alias klf1s="kubectl logs --since 1s -f"



# ======================================================================================================================
# ================================================================================================================ Port-Forward
# ======================================================================================================================
alias kpf="kubectl port-forward"



# ======================================================================================================================
# ================================================================================================================ Rollout
# ======================================================================================================================
alias krl="kubectl rollout"

alias krlsd="kubectl rollout status deployment"

alias krlsss="kubectl rollout status statefulset"

alias krlh="kubectl rollout history"

alias krlu="kubectl rollout undo"



# ======================================================================================================================
# ================================================================================================================ Run
# ======================================================================================================================
alias kr="kubectl run"



# ======================================================================================================================
# ================================================================================================================ Scale
# ======================================================================================================================
alias ks="kubectl scale"

alias ksd="kubectl scale deployment"
alias ksss="kubectl scale statefulset"
