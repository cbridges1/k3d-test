## Run application
Run application: ./gradlew bootrun --info

## Create cluster
bash create-cluster.sh

## Deploy to cluster
bash deploy.sh

## Manage in k9s
k9s -n=default

## Containerize application and run in docker
docker build . --file Dockerfile --tag placr
docker run -p 8080:8080 placr