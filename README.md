# k8s-bp-server

### Instalar gcloud cli ( OSX )
```
brew install google-cloud-sdk
brew install kubectl
```


### Configuracao do gcloud cli

```
gcloud auth login
gcloud config set project validador-bp-t20-rio
gcloud components install kubectl
gcloud container clusters get-credentials bp-kubernets-cluster --region southamerica-east1 --project validador-bp-t20-rio
```

### Criar namespace
```
kubectl apply -f prod-sc-namespace.yml
```

### Configurar credenciais dockerhub ( ou outro image container)
```
$ bash docker-hub-secret.sh
```

### Deploy pods e services
```
kubectl apply -f deployment.yml
```

### Acessando k8s-master SSH
```
gcloud compute ssh k8s-master --zone=us-central1-a\
```


```
NAME        ZONE           MACHINE_TYPE  PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP  STATUS
k8s-master  us-central1-a  e2-medium                  10.128.0.3   34.59.28.41  RUNNING

NAME          ZONE           MACHINE_TYPE  PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP     STATUS
k8s-worker-1  us-central1-a  e2-medium                  10.128.0.4   34.171.253.204  RUNNING
k8s-worker-2  us-central1-a  e2-medium                  10.128.0.5   34.46.193.71    RUNNING
k8s-worker-3  us-central1-a  e2-medium                  10.128.0.6   34.66.226.84    RUNNING
k8s-worker-4  us-central1-a  e2-medium                  10.128.0.7   34.69.168.71    RUNNING
```