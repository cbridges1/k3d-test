k3d registry create test-app-registry --port 5050
k3d cluster create test-cluster --agents 3 -p "9900:80@loadbalancer" --registry-use k3d-test-app-registry:5050 --registry-config registries.yaml
kubectl config use-context k3d-test-cluster
k3d kubeconfig merge test-cluster --kubeconfig-merge-default --kubeconfig-switch-context