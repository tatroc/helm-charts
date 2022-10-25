#!/bin/bash
export version=1.0.1
export chart_name=helm-test-chart


#cd helm-test-chart 

helm package charts/helm-test-chart --version $version

helm repo index --url https://tatroc.github.io/helm-charts/ .
cat index.yaml

# helm repo add tatro-github https://tatroc.github.io/helm-charts
# helm search repo tatro-github
# helm install helm-test-chart --set docker_hub_secret=$DOCKER_HUB_SECRET tatro-github/helm-test-chart -n test

# helm delete helm-test-chart -n test
