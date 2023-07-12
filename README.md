# docker-minikube-basics


# To deploy lighthouse in minikube

Step 1 : Build docker image and push image to docker hub

```shell
docker build -t rohanmaharjan100/myapp .
docker image push rohanmaharjan100/myapp:latest
```

Step 2: Start minikube with command :

```shell
minikube start
```

Step 3: Create deployment using deployment command :

```shell
kubectl apply -f deployment.yaml
```

Step 4:Expose the pods running within the cluster to the outside world to be accessible:

```shell
kubectl expose deployment rohanmaharjan100/myapp --port=4000

kubectl port-forward service/myapp-deployment  4000:4000

```
