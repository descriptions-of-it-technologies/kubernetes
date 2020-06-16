kubectl run namePod --image=buysybox --generator=run-pod/v1 --dry-run=client -o yaml --command -- sleep 300 > pod-1.yaml
