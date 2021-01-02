#!/bin/bash

minikube start
# 😄  minikube v1.16.0 on Ubuntu 18.04
# ✨  Using the docker driver based on existing profile
# 👍  Starting control plane node minikube in cluster minikube
# 🔄  Restarting existing docker container for "minikube" ...
# 🐳  Preparing Kubernetes v1.20.0 on Docker 20.10.0 ...
# 🔎  Verifying Kubernetes components...
# 🌟  Enabled addons: storage-provisioner, default-storageclass
# 🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default

minikube status
# minikube
# type: Control Plane
# host: Running
# kubelet: Running
# apiserver: Running
# kubeconfig: Configured
# timeToStop: Nonexistent

# Cluster IP Address 
angel@freya:~/Workspace/minikube-lab$ minikube ip
# 192.168.49.2

ping 192.168.49.2
# PING 192.168.49.2 (192.168.49.2) 56(84) bytes of data.
# 64 bytes from 192.168.49.2: icmp_seq=1 ttl=64 time=0.052 ms
# 64 bytes from 192.168.49.2: icmp_seq=2 ttl=64 time=0.046 ms
# 
# --- 192.168.49.2 ping statistics ---
# 2 packets transmitted, 2 received, 0% packet loss, time 1009ms
# rtt min/avg/max/mdev = 0.046/0.049/0.052/0.003 ms

# Connect to Machine
minikube ssh
# Last login: Thu Dec 31 19:33:13 2020 from 192.168.49.1
# docker@minikube:~$ 

# Check local IP
ip a
# 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
#     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
#     inet 127.0.0.1/8 scope host lo
#        valid_lft forever preferred_lft forever
# 2: docker0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default 
#     link/ether 02:42:c1:c2:9c:d9 brd ff:ff:ff:ff:ff:ff
#     inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0
#        valid_lft forever preferred_lft forever
# 4: vethfcebc00@if3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue master docker0 state UP group default 
#     link/ether ce:1c:35:7c:ed:b6 brd ff:ff:ff:ff:ff:ff link-netnsid 1
# 5: eth0@if6: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default 
#     link/ether 02:42:c0:a8:31:02 brd ff:ff:ff:ff:ff:ff link-netnsid 0
#     inet 192.168.49.2/24 brd 192.168.49.255 scope global eth0
#        valid_lft forever preferred_lft forever

minukube logs -f
minikube logs --problems=true

minikube update-check
# CurrentVersion: v1.16.0
# LatestVersion: v1.16.0

