#!/bin/bash
export version=1.0.1
export chart_name=helm-test-chart


#cd helm-test-chart 

helm package charts/helm-test-chart --version $version

helm repo index --url https://tatroc.github.io/helm-charts/ .
cat index.yaml
