# Work In Progress

- Ensure you have docker installed
- [install kind](https://kind.sigs.k8s.io/docs/user/quick-start/)
- create a Kind three cluster nodes config file without enabling the CNI plugin for future exercies **kind-1m3w-nocni.yaml

```sh
kind create cluster --config=/kind-1m3w-nocni.yaml
```
 
 ```yaml
 kind: Cluster
 apiVersion: kind.x-k8s.io/v1alpha4
 networking:
   disableDefaultCNI: true
   podSubnet: "10.244.0.0/16"
   serviceSubnet: "10.96.0.0/12"
 nodes:
 - role: control-plane
 - role: worker
 - role: worker
 - role: worker
 ```
- follow the asciinema instructions from local file "kind-create-cluster.asc" or https://asciinema.org/a/368118

