# Laboratory 6 - Cloud Deployment Engineer

## Mission Overview
Deployed a two-tier private cloud storage application (Nextcloud + MariaDB) using Docker 
Compose, transitioning from manual single-container deployments to Infrastructure as Code.

## Objectives
- Explain the concept of a multi-tier application architecture
- Understand the purpose and structure of a docker-compose.yml file
- Deploy a multi-container application using Docker Compose
- Document deployment procedures and IaC principles

## Commands Executed
- `mkdir nextcloud-deployment && cd nextcloud-deployment`
- `nano docker-compose.yml`
- `docker-compose up -d`
- `docker-compose ps`
- `docker-compose down`

## Skills Learned
- Writing and correctly indenting a Docker Compose YAML file
- Deploying multi-container applications as a single stack
- Understanding how Compose networking lets containers resolve each other by service name
- Managing the full lifecycle of a multi-container app (deploy, verify, teardown)
