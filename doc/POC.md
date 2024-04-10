# ArgoCD Deployment Instructions 

Follow these steps to deploy ArgoCD using `k3d` and `kubectl` commands: 

**Create the Kubernetes cluster:**
```
k3d cluster create argo
```

**Verify the cluster information:**
```
kubectl cluster-info
```

**List all resources in all namespaces:**
```
kubectl get all -A
```

**Create a namespace for ArgoCD:**
```
kubectl create namespace argocd
```

**Verify the namespace creation:**
```
kubectl get ns
```

**Apply the ArgoCD installation manifest:**
```
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

**Check all ArgoCD resources:**
```
kubectl get all -n argocd
```

**Get the initial admin password:**
```
kubectl -n argocd get secrets argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
```

**Copy the password and use 'admin' as the login.**

**Port forward the ArgoCD server to localhost:**
```
kubectl -n argocd port-forward svc/argocd-server 8080:443
```

After following these steps, ArgoCD should be successfully deployed. Access the web UI by navigating to `http://localhost:8080` in your browser and logging in with the username 'admin' and the password you obtained in step 9.