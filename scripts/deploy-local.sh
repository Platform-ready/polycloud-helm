#!/usr/bin/env bash
set -e
NAMESPACE="polycloud"
helm upgrade --install polycloud . -n $NAMESPACE --create-namespace -f values.yaml
kubectl rollout status deployment/polycloud-monolith -n $NAMESPACE
echo "✅ Deployed! Access app using: kubectl port-forward svc/polycloud-monolith 8080:80"
