# DevOps_Test
Repo for completion of test assignment for an interview
Introduction
This repository contains practical solutions to common technical problems encountered in DevOps, infrastructure management, and software development. The questions span across key concepts such as containerization, orchestration, continuous integration and deployment, as well as text processing tools for log analysis.

Solutions
Dockerfile for Nginx 1.19
Objective: Create a Dockerfile to deploy Nginx 1.19 with security best practices.

Approach: Use the lightweight and secure Alpine base image to build a small and efficient container.

Key Features:

Base image: nginx:1.19-alpine

Exposes port 80 for HTTP traffic.

Minimal layers to reduce the attack surface.

Kubernetes StatefulSet for Nginx
Objective: Create a Kubernetes StatefulSet to deploy Nginx with persistent storage and resource limits.

Approach: Use StatefulSet for stable identities, persistent storage with PVC, and define CPU/memory resource requests and limits.

Key Features:

Replicas: 3 Nginx pods.

Persistent volume claims (PVC) to ensure data persistence.

Resource limits set for optimal performance.



CI/CD Pipeline Setup
Objective: Set up a build and deployment pipeline using GitHub Actions for Nginx.

Approach: Automate Docker image build, security scanning, and Kubernetes deployment.

Key Features:

Automated Docker image build and push to Docker Hub.

Security checks using Trivy.

Deployment to Kubernetes using kubectl.



Text Manipulation Problem
Objective: Process a log file to extract unique IP addresses with HTTP 401 Unauthorized responses.

Approach: Use Unix/Linux tools like awk, sort, and uniq to parse and filter the log data efficiently.

Key Features:

Efficient parsing of log files.

Sorting and extracting unique IP addresses.

Solution implemented in a shell script.
