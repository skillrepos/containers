echo
if [[ `kubectl version --short | grep Client | cut -d'.' -f2` > 22 ]]; then kubectl -n kubernetes-dashboard create token admin-user;
else kubectl -n kubernetes-dashboard get secret $(kubectl -n kubernetes-dashboard get sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}";
fi
echo
echo
