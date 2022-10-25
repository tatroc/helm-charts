# helm-charts

This repo acts as a HELM repoitory

Package helm chart
```
helm package charts/helm-test-chart --version $version
```

Create index of new helm chart
```
helm repo index --url https://tatroc.github.io/helm-charts/ .
cat index.yaml
```


Add local repo for helm chart
```
helm repo add tatro-github https://tatroc.github.io/helm-charts
```

Verify repo is searchable
```
helm search repo tatro-github
```

Install helm chart
```
helm install helm-test-chart --set docker_hub_secret=$DOCKER_HUB_SECRET tatro-github/helm-test-chart -n test
```

delete helm chart
```
helm delete helm-test-chart -n test
```
