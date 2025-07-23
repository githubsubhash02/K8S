#!/bin/bash
helm repo add fluent https://fluent.github.io/helm-charts
helm repo update

helm install fluent-bit fluent/fluent-bit \
  --namespace monitoring \
  -f helm-values/fluentbit-values.yaml

