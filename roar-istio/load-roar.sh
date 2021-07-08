INGRESS_HOST=$(sudo minikube ip)
INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')
echo $INGRESS_HOST
echo $INGRESS_PORT

while [ 1 ]
do


    curl http://$INGRESS_HOST:$INGRESS_PORT/roar/api/v1/status/version
    echo
    sleep 1
    

done

