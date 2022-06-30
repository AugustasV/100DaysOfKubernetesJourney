# RKE cluster terraform scripts preparation

## Introduction
 Main idea is to run simple terraform script who would create vm's on three different cloud providers and connect those to one cluster (one master node, two worker nodes)

## Prerequisite
* terraform provider
* cloud vendor

## Use Case
To spin up Kubernetes cluster using scripts only, IaaC.

## Research

Create vm's using terraform provider of cloud vendor. RKE cluster could be spined up using rancher terraform provider, config passed via cluster.yaml file.

All those Vm's should be configured, I think the best way to do it is via Ansible playbooks, open ports, install dependencies. We will see.

## Try yourself

First step to generate access token on three different cloud providers (digital ocean, vultr and hetzner).
Interesting that on vultr I could even specify subnet access control for API token.
