kubectl create secret docker-registry cthadeu-dockerhub \
  --docker-username=$DOCKER_USERNAME \
  --docker-password=$DOCKER_PASSWORD \
  --docker-email=cyro.thadeu@gmail.com \
  --namespace=prod-jae
