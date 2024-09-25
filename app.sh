#!/bin/bash

set +e

echo "Deploying sample app:"
# envsubst < httpbin.yaml | kubectl apply -f -
cd traefik
kubectl apply -f 03-whoami.yaml -f 03-whoami-services.yaml -f 04-whoami-ingress.yaml
cd -
