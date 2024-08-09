echo ...Creating namespace
kubectl create ns monitoring
echo 
echo ...Installing Prometheus and Grafana
echo
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install -n monitoring monitoring --version="38.0.3" prometheus-community/kube-prometheus-stack --set prometheusOperator.admissionWebhooks.failurePolicy=Ignore
echo
echo ...Installing Kubernetes dashboard
echo
# install dashboard
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml
kubectl apply -f /workspaces/containers/monitoring/dashboard-rbac.yaml
