# Cilium Network Policy and Knative Serverless Functions

## Introduction
Learned about how to use Cilium network rules with Knative, a serverless platform. Creating different pods, sort them using labels, and set up rules so that some pods can only talk to others with matching labels.

* Serving: It takes care of serverless functions, adjusting their size, handling how they're reached, and managing network using something called Istio.
* Eventing: This helps us make functions run when specific things happen, like events.

## Prerequisites
- A working Kubernetes cluster.
- Cilium and Knative properly set up.
- Some basic knowledge of Kubernetes, Cilium, and Knative.

## Use Case
Think of it like this: You have different functions of application in different places, and you want to control who they can talk to. You only want functions with specific labels to talk to each other. Combining Cilium network rules makes this possible.

## Research
Things to know:
- **Cilium**: Learn how to create and apply network rules with Cilium in your Kubernetes setup.
- **Knative Serving**: Understand how Knative Serving manages serverless functions, adjusts their size, and controls network using Istio.
- **Knative Eventing**: Explore how Knative Eventing allows you to say, "When this happens, do that" with serverless functions.

## Try It Yourself
1. Set up your serverless functions using Knative.
2. Create network rule with Cilium to control who can talk to whom based on labels.
3. Test these rules to make sure they're working as you want.
