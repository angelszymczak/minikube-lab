#minikube start --cpus=4 --memory=4G --driver=virtualbox
minikube start --cpus=2 --memory=2G --driver=docker
# 😄  minikube v1.16.0 on Ubuntu 18.04
# ✨  Using the docker driver based on user configuration
# 👍  Starting control plane node minikube in cluster minikube
# 🚜  Pulling base image ...
# 🔥  Creating docker container (CPUs=2, Memory=2048MB) ...
# ❗  This container is having trouble accessing https://k8s.gcr.io
# 💡  To pull new external images, you may need to configure a proxy: https://minikube.sigs.k8s.io/docs/reference/networking/proxy/
# 🐳  Preparing Kubernetes v1.20.0 on Docker 20.10.0 ...
#     ▪ Generating certificates and keys ...
#     ▪ Booting up control plane ...
#     ▪ Configuring RBAC rules ...
# 🔎  Verifying Kubernetes components...
# 🌟  Enabled addons: default-storageclass, storage-provisioner
# 🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default

docker ps
# CONTAINER ID   IMAGE                                           COMMAND                  CREATED              STATUS              PORTS                                                                                                      NAMES
# e38cc99f6472   gcr.io/k8s-minikube/kicbase:v0.0.15-snapshot4   "/usr/local/bin/entr…"   About a minute ago   Up About a minute   127.0.0.1:49156->22/tcp, 127.0.0.1:49155->2376/tcp, 127.0.0.1:49154->5000/tcp, 127.0.0.1:49153->8443/tcp   minikube

kubectl get nodes
# NAME       STATUS   ROLES                  AGE    VERSION
# minikube   Ready    control-plane,master   113s   v1.20.0

minikube status
# minikube
# type: Control Plane
# host: Running
# kubelet: Running
# apiserver: Running
# kubeconfig: Configured
# timeToStop: Nonexistent

minikube delete
# 🔥  Deleting "minikube" in docker ...
# 🔥  Deleting container "minikube" ...
# 🔥  Removing /home/angel/.minikube/machines/minikube ...
# 💀  Removed all traces of the "minikube" cluster.
