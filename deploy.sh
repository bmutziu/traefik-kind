#!/bin/bash

set +e

echo "Deploying traefik components:"
traefik_files=("00-namespace" "00-role" "00-account" "01-role-binding" "02-traefik" "02-traefik-services")
for f in ${traefik_files[@]}; do
  envsubst < traefik.new/${f}.yml | kubectl apply -f -
done
