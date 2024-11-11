# k8s-bfd-bird
Run BFD using BIRD on K8s, since Cilium doesn't support it (yet).

## Build/push the image

```bash
docker build -t myregistry.example.com/library/bfd-bird:latest .
```

```bash
docker push myregistry.example.com/library/bfd-bird:latest
```

## Configure

Edit `bird.conf` and the example DaemonSet in `manifests/` to suit your environment.

## Deploy

```bash
kubectl create configmap bird-config --from-file ./bird.conf
kubectl apply -f ./manifests/daemonset.yaml
```
