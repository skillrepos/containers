echo --------------------------------------------------------
echo
echo --- Grafana initial password follows ---
echo
kubectl get secret --namespace monitoring monitoring-grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
echo
echo ----------------------------------------
echo
