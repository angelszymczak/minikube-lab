#!/bin/bash

minikube status
# minikube
# type: Control Plane
# host: Running
# kubelet: Running
# apiserver: Running
# kubeconfig: Configured
# timeToStop: Nonexistent

kubectl get nodes
# NAME       STATUS   ROLES                  AGE    VERSION
# minikube   Ready    control-plane,master   135m   v1.20.0

minikube pause
# ⏸️  Pausing node minikube ... 
# ⏯️  Paused 14 containers in: kube-system, kubernetes-dashboard, storage-gluster, istio-operator

minikube status
# minikube
# type: Control Plane
# ost: Running
# ubelet: Stopped
# piserver: Paused
# ubeconfig: Configured
# imeToStop: Nonexistent

kubectl get nodes
# Unable to connect to the server: net/http: TLS handshake timeout

minikube unpause
# ⏸️  Unpausing node minikube ... 
# ⏸️  Unpaused 14 containers in: kube-system, kubernetes-dashboard, storage-gluster, istio-operator

minikube status
# minikube
# type: Control Plane
# host: Running
# kubelet: Running
# apiserver: Running
# kubeconfig: Configured
# timeToStop: Nonexistent

kubectl get nodes
# NAME       STATUS   ROLES                  AGE    VERSION
# minikube   Ready    control-plane,master   136m   v1.20.0

kube stop
# ✋  Stopping node "minikube"  ...
# 🛑  Powering off "minikube" via SSH ...
# 🛑  1 nodes stopped.

minikube status
# minikube
# type: Control Plane
# host: Stopped
# kubelet: Stopped
# apiserver: Stopped
# kubeconfig: Stopped
# timeToStop: Nonexistent

minikube start
# 😄  minikube v1.16.0 on Ubuntu 18.04
# ✨  Using the docker driver based on existing profile
# 👍  Starting control plane node minikube in cluster minikube
# 🔄  Restarting existing docker container for "minikube" ...
# 🐳  Preparing Kubernetes v1.20.0 on Docker 20.10.0 ...
# 🔎  Verifying Kubernetes components...
# 🌟  Enabled addons: storage-provisioner, default-storageclass
# 🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default

minikube delete
# 🔥  Deleting "minikube" in docker ...
# 🔥  Deleting container "minikube" ...
# 🔥  Removing /home/angel/.minikube/machines/minikube ...
# 💀  Removed all traces of the "minikube" cluster.

minikube start --cpus=2 --memory=2GB --driver=docker
# 😄  minikube v1.16.0 on Ubuntu 18.04
# ✨  Using the docker driver based on user configuration
# 👍  Starting control plane node minikube in cluster minikube
# 🔥  Creating docker container (CPUs=2, Memory=2048MB) ...
# 🐳  Preparing Kubernetes v1.20.0 on Docker 20.10.0 ...
#     ▪ Generating certificates and keys ...
#     ▪ Booting up control plane ...
#     ▪ Configuring RBAC rules ...
# 🔎  Verifying Kubernetes components...
# 🌟  Enabled addons: storage-provisioner, default-storageclass
# 🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default

minikube config set cpus 2
#❗  These changes will take effect upon a minikube delete and then a minikube start

cat ./minikube/config/config.json 
# {
#    "cpus": 2
# }

# We can manually edit it to add some extra properties
# {
#    "cpus": 2,
#    "dashboard": false,
#    "disk-size": "20000",
#    "driver": "docker",
#    "insecure-registry": "true",
#    "memory": 2000
# }

minikube delete
# 🔥  Deleting "minikube" in docker ...
# 🔥  Deleting container "minikube" ...
# 🔥  Removing /home/angel/.minikube/machines/minikube ...
# 🔥  Trying to delete invalid profile minikube

minikube config view
# - disk-size: 20000
# - driver: docker
# - insecure-registry: true
# - memory: 2000
# - cpus: 2
# - dashboard: false

minikube start
# 😄  minikube v1.16.0 on Ubuntu 18.04
# ✨  Using the docker driver based on user configuration
# 👍  Starting control plane node minikube in cluster minikube
# 🔥  Creating docker container (CPUs=2, Memory=2000MB) ...
# 🐳  Preparing Kubernetes v1.20.0 on Docker 20.10.0 ...
# 🔎  Verifying Kubernetes components...
# 🌟  Enabled addons: storage-provisioner, default-storageclass
# 🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default

minikube config unset cpus
minikube config view
# - insecure-registry: true
# - memory: 2000
# - dashboard: false
# - disk-size: 20000
# - driver: docker

minikube config set cpus 2
#❗  These changes will take effect upon a minikube delete and then a minikube start

minikube config view
# - cpus: 2
# - dashboard: false
# - disk-size: 20000
# - driver: docker
# - insecure-registry: true
# - memory: 2000
