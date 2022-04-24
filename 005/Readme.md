# K8GB - cloud native Kubernetes Global Balancer First try

## Introduction
 K8GB is a Global Server Load Balancing solution with a focus on having cloud native qualities and work natively in a Kubernetes context. It's great - you could mix health status of different Kubernetes clusters who are based on different regions, and work on high availability of those, doesn't matter it's on cloud or on premise.

## Prerequisite
* Loadbalancer
* Multi cluster connect & management
* RBAC knowledge.
* Loadbalancer types (round-robin, weighting, active/passive, etc.)

## Use Case
To run it on two different clusters in different regions. Learn about that kind of loadbalancing between different nodes in different regions, not nginx way...
## Research
Networking, to learn it how it works, make helm deployment.

## Try yourself
Tried to spin up local cluster by [following docs](https://www.k8gb.io/docs/local.html#running-project-locally)Tests failed.
