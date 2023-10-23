# Trying Linkerd: Kubernetes Service Mesh and kubectl Tips"
## Introduction

Linkerd is a lightweight, open-source service mesh that is designed to improve the observability, reliability, and security of applications in a Kubernetes environment. It provides features such as request tracing, load balancing, and automatic retries, making it a powerful tool for managing microservices.

## Prerequisite

1. **Kubernetes Cluster**: You should have access to a running Kubernetes cluster. If you don't have one set up, you can create one using platforms like Minikube, kind, or a cloud-managed Kubernetes service.

2. **kubectl**: Install the Kubernetes command-line tool (`kubectl`) and ensure it is configured to communicate with your Kubernetes cluster.

3. **Linkerd CLI**: Install the Linkerd CLI tool to manage Linkerd service mesh. You can find installation instructions in the Linkerd documentation.

4. **Application Knowledge**: Familiarize yourself with the application you plan to deploy with Linkerd, as well as the gRPC protocol if your application uses it.

## Use Case

- **Service Mesh Deployment**: We will deploy Linkerd as a service mesh in the Kubernetes cluster to manage communication between the services. Linkerd will automatically inject sidecar proxies into the application pods to provide features like request tracing, load balancing, and retries.

## Research

- [Debugging gRPC applications with request tracing](https://linkerd.io/2.14/tasks/debugging-your-service)

## Try Yourself

1. **Configure Linkerd CLI**: Make sure you have the Linkerd CLI configured and installed.

2. **Getting Started**: Go through the Linkerd getting started guide.

3. **Install Emoji-Voto**: Install the Emoji-Voto application using Linkerd.

4. **Debugging gRPC with Request Tracing**: Debug a gRPC application using Linkerd's request tracing capabilities.

## Tips and Tricks

- To get all different resources in the "default" namespace, you can use the following command:
  ```bash
  kubectl get all,cm,secrets,ingress -n default
  ```

- To delete all resources in a specific namespace (e.g., "test"), you can use the following command:
  ```bash
  kubectl delete all --all -n test
  ```

- Check what actions you can perform in the cluster with a specific resource, for example, listing pods:
  ```bash
  kubectl auth can-i list pods
  ```

- For cluster roles, you may need a service account and set up verbs and resources. Ensure proper RBAC (Role-Based Access Control) configurations.

- To see different versions of API and short names for resources, you can use:
  ```bash
  kubectl api-resources
  ```

- If you need to understand the meaning of a specific resource, you can use:
  ```bash
  kubectl explain RESOURCE
  ```