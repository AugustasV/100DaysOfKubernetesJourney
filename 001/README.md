# Trying out KinD, Podman in Rootless
## Introduction
On my fresh Sparky Linux machine, I had the goal of setting up my local Kubernetes environment, so I could test things locally and contribute to open source projects. I wanted to try rootless mode.
## Prerequisite
* [docker](https://docs.docker.com/engine/install/debian/#install-using-the-repository)
* [podman]()
* [kinD](https://kind.sigs.k8s.io/docs/user/quick-start)
## Use Case
Create kubernetes cluster
## Research
What is rootless mode? Every container needs root access to work properly. Even if you only inside container as user, still underlying there is root access commands running in the background. 

It doesn't matter if it is a podman or a docker. Root access introduces some security issues, so developers trying their best to change underlying infrastructure and somehow make it work without root. But still [no success](https://www.redhat.com/en/blog/preview-running-containers-without-root-rhel-76)
There is quite active project like [usernetes](https://github.com/rootless-containers/usernetes) for rootless containers.

## Try yourself
I tried to run rootless containers by myself, but unsuccessfully, with rootless docker and rootless podman configs. I uninstalled
rootless podman and installed regular docker and it almost worked from first try.
```augustasv@probook:~$ kind create cluster
Creating cluster "kind" ...
✓ Ensuring node image (kindest/node:v1.21.1) 🖼✓ Preparing nodes 📦✓ Writing configuration 📜✓ Starting control-plane 🕹️ ^T✓ Installing CNI 🔌✓ Installing StorageClass 💾ERROR:
failed to create cluster: failed to write KUBECONFIG: open /home/augustasv/.kube/config: permission denied
```
Simple chmod 644 command did a trick, works as expected.
```
augustasv@probook:~$ k get pods -n kube-system
NAME                                         READY   STATUS    RESTARTS   AGE
coredns-558bd4d5db-b4xjb                     1/1     Running   0          106m
coredns-558bd4d5db-ctl6x                     1/1     Running   0          106m
etcd-kind-control-plane                      1/1     Running   0          107m
kindnet-kkbsv                                1/1     Running   0          106m
kube-apiserver-kind-control-plane            1/1     Running   0          107m
kube-controller-manager-kind-control-plane   1/1     Running   0          107m
kube-proxy-8vxj6                             1/1     Running   0          106m
kube-scheduler-kind-control-plane            1/1     Running   0          107m
```
100DaysOfKubernetesJourney