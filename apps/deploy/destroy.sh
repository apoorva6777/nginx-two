cd ..
cd scripts
kubectl delete -f metric-server.yaml
kubectl delete -f horizontal-pod-autoscaler-ping.yaml
kubectl delete -f horizontal-pod-autoscaler-nginx.yaml
kubectl delete -f cluster-autoscaler.yaml
kubectl delete -f horizontal-pod-autoscaler-status.yaml
kubectl delete -f horizontal-pod-autoscaler-nginx2.yaml
kubectl delete -f ingress-status.yaml
kubectl delete -f service-status.yaml
kubectl delete -f ingress-ping.yaml
kubectl delete -f service-ping.yaml
kubectl delete -f deployment-ping.yaml
kubectl delete -f deployment-status.yaml
kubectl delete -f nginx1.yaml
kubectl delete -f nginx2.yaml
kubectl delete -f namespace-ping.yaml
kubectl delete -f namespace-status.yaml
cd ..
cd infra
cd kubernetes
terraform destroy --auto-approve
cd ..
cd registry
terraform destroy --auto-approve
echo "all destroyed"