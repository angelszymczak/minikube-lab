#!/bin/bash

minikube addons list
# |-----------------------------|----------|--------------|
# |         ADDON NAME          | PROFILE  |    STATUS    |
# |-----------------------------|----------|--------------|
# | ambassador                  | minikube | disabled     |
# | csi-hostpath-driver         | minikube | disabled     |
# | dashboard                   | minikube | disabled     |
# | default-storageclass        | minikube | enabled ✅   |
# | efk                         | minikube | disabled     |
# | freshpod                    | minikube | disabled     |
# | gcp-auth                    | minikube | disabled     |
# | gvisor                      | minikube | disabled     |
# | helm-tiller                 | minikube | disabled     |
# | ingress                     | minikube | disabled     |
# | ingress-dns                 | minikube | disabled     |
# | istio                       | minikube | disabled     |
# | istio-provisioner           | minikube | disabled     |
# | kubevirt                    | minikube | disabled     |
# | logviewer                   | minikube | disabled     |
# | metallb                     | minikube | disabled     |
# | metrics-server              | minikube | disabled     |
# | nvidia-driver-installer     | minikube | disabled     |
# | nvidia-gpu-device-plugin    | minikube | disabled     |
# | olm                         | minikube | disabled     |
# | pod-security-policy         | minikube | disabled     |
# | registry                    | minikube | disabled     |
# | registry-aliases            | minikube | disabled     |
# | registry-creds              | minikube | disabled     |
# | storage-provisioner         | minikube | enabled ✅   |
# | storage-provisioner-gluster | minikube | disabled     |
# | volumesnapshots             | minikube | disabled     |
# |-----------------------------|----------|--------------|

minikube addons enable dashboard
#💡  Some dashboard features require the metrics-server addon. To enable all features please run:
#
#	minikube addons enable metrics-server	
#
#
# 🌟  The 'dashboard' addon is enabled

minikube addons list | grep dashboard
# | dashboard                   | minikube | enabled ✅   |

minikube dashboard
# 🤔  Verifying dashboard health ...
# 🚀  Launching proxy ...
# 🤔  Verifying proxy health ...
# 🎉  Opening http://127.0.0.1:34131/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/ in your default browser...
 
