# Google Kubernetes Engine (GKE)

## Local Docker Commands

### Build / Run

docker build -t gke-node-microservice .  
docker run -p 8080:8080 gke-node-microservice

## Access via curl

```bash
curl http://localhost:8080/
curl http://localhost:8080/health
curl http://localhost:8080/greeter
curl http://localhost:8080/greeter?name=Foo
```

## Access via Browser

Open your web browser and navigate to the following URLs:

- http://localhost:8080/
- http://localhost:8080/health
- http://localhost:8080/greeter
- http://localhost:8080/greeter?name=Foo

## Publish to [Docker Hub](https://hub.docker.com/)

```bash
docker tag gke-node-microservice <your-dockerhub-username>/gke-node-microservice
docker push <your-dockerhub-username>/gke-node-microservice
```

## Pull Docker Image from Docker Hub

```bash
docker pull <your-dockerhub-username>/gke-node-microservice
```

## Pull [cumuluscycles/gke-node-microservice](https://hub.docker.com/repository/docker/cumuluscycles/gke-node-microservice/general) Image from Docker Hub

```bash
docker pull cumuluscycles/gke-node-microservice
```

## GKE Commands

```bash
gcloud config set project <your-project-id>
gcloud container clusters get-credentials <cluster-name> --zone <zone>
gcloud container clusters create <cluster-name> --zone <zone>

kubectl create deployment <deployment-name> --image=<image-name>
kubectl get deployment <deployment-name>

kubectl expose deployment <deployment-name> --type=LoadBalancer --port 8080 --target-port 8080
kubectl get services
kubectl get pods

kubectl scale deployment <deployment-name> --replicas=<number-of-replicas>
kubectl autoscale deployment <deployment-name> --cpu-percent=<target-cpu-utilization> --min=1 --max=<max-replicas>
kubectl get hpa

kubectl delete service <service-name>
kubectl delete deployment <deployment-name>
gcloud container clusters delete <cluster-name> --zone <zone>
```
