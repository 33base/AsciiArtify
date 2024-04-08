# Introduction

In this document, we will compare and contrast three tools for deploying local Kubernetes clusters: minikube, kind, and k3d. Each of these tools has its own advantages and disadvantages, which we will examine to determine the most suitable option for our startup "AsciiArtify".

## Features

1. **Minikube**:
   - Supported OS: Linux, macOS, Windows.
   - Automation Capabilities: Limited.
   - Additional Features: Minimal functionality designed for developing and testing local Kubernetes clusters.

2. **Kind (Kubernetes IN Docker)**:
   - Supported OS: Linux, macOS, Windows.
   - Automation Capabilities: Provides extensive automation capabilities, especially with CI/CD tools.
   - Additional Features: Convenient for testing and development, with the ability to run local Kubernetes clusters in Docker containers.

3. **K3d (K3s in Docker)**:
   - Supported OS: Linux, macOS, Windows.
   - Automation Capabilities: Offers automation and integration with other tools.
   - Additional Features: Enables quick deployment and testing of Kubernetes clusters in Docker containers, with built-in support for additional monitoring and management tools.

## Advantages and Disadvantages

1. **Minikube**:
   - Advantages:
     - Easy to use and configure.
     - Well-suited for getting started with Kubernetes.
   - Disadvantages:
     - Limited scalability and capabilities.

2. **Kind**:
   - Advantages:
     - Quick deployment and easy integration with Docker.
     - Ability to automate and extend functionality.
   - Disadvantages:
     - Limited feature support compared to a real Kubernetes cluster.

3. **K3d**:
   - Advantages:
     - Quick deployment and easy integration with Docker.
     - Built-in support for additional tools and functionality.
   - Disadvantages:
     - Potential issues with enterprise use due to Docker's private license.

## Demonstration

To demonstrate the recommended tool, we will use K3d. Let's demonstrate the quick deployment of a Kubernetes cluster using K3d and deploy a "Hello World" application.

1. Install K3d using the appropriate command in the terminal.
2. Create a new K3d cluster with the command `k3d cluster create my-cluster`.
3. After successfully creating the cluster, deploy the "Hello World" application using the command `kubectl create deploy test --image 33base/devops_prometheus.git:server.1.0.1`.
4. Verify the successful deployment of the application using the command `kubectl get pods`.
<a href="https://asciinema.org/a/RRnggrJZktUddzLsniE3UiH0q" target="_blank"><img src="https://asciinema.org/a/RRnggrJZktUddzLsniE3UiH0q.svg" /></a>
### Minikube Demonstration

1. Install Minikube using the instructions for your operating system.
2. Start Minikube using the command `minikube start`.
3. After successful start, check the cluster status using the command `kubectl cluster-info`.
4. Deploy the "Hello World" application on the cluster using the command `kubectl apply -f hello-world.yaml`.
5. Verify the successful deployment of the application and its status using the commands `kubectl get pods` and `kubectl get svc`.
[![asciicast](https://asciinema.org/a/qKtqb77ArWX6msuCqoq81Q9Vn.svg)](https://asciinema.org/a/qKtqb77ArWX6msuCqoq81Q9Vn)
### Kind Demonstration

1. Install Kind using the instructions for your operating system.
2. Create a new Kind cluster using the command `kind create cluster`.
3. After successful creation, check the cluster status using the command `kubectl cluster-info`.
4. Deploy the "Hello World" application on the cluster using the command `kubectl apply -f hello-world.yaml`.
5. Verify the successful deployment of the application and its status using the commands `kubectl get pods` and `kubectl get svc`.
[![asciicast](https://asciinema.org/a/RRnggrJZktUddzLsniE3UiH0q.svg)](https://asciinema.org/a/RRnggrJZktUddzLsniE3UiH0q)
## Conclusion

After evaluating minikube, kind, and k3d, we have concluded that k3d is the best option for our needs. It combines quick deployment, ease of use, scalability, and additional features such as monitoring and management support. Compared to minikube and kind, k3d is the most convenient and powerful tool for deploying local Kubernetes clusters in our case.

## Summary

Using k3d for deploying local Kubernetes clusters in Docker containers is the optimal choice for our startup "AsciiArtify". This tool will allow us to efficiently develop and test our software products, providing flexibility and scalability for future needs.
