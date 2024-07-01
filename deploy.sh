./gradlew build
docker build . --file Dockerfile --tag placr
docker tag placr localhost:5050/placr
docker push localhost:5050/placr
kubectl delete deployment placr
kubectl delete service placr
kubectl create deployment placr --image=k3d-test-app-registry:5050/placr
kubectl create service clusterip placr --tcp=8080:8080
kubectl apply -f .\ingress.yaml
echo "Service visible at: http://localhost:9900/swagger-ui/index.html"