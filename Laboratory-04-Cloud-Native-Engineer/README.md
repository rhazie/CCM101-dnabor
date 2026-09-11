# Laboratory 4: The Cloud-Native Engineer

## Mission Overview
CloudNova Technologies has a client whose traditional Virtual Machines are slow to boot and consume excessive RAM. This lab explores the shift from virtualization to containerization by comparing VMs and Docker containers, then deploying a live, containerized Nginx web server using the Docker CLI on the KillerCoda Playground.

## Objectives
- Differentiate between traditional Virtual Machines (VMs) and Containers
- Access a Docker-enabled cloud environment using KillerCoda
- Execute fundamental Docker CLI commands
- Pull, run, manage, and terminate a containerized application (Nginx)
- Create professional technical documentation using Markdown
- Continue developing a well-organized GitHub Cloud Computing Portfolio

## Docker Commands Executed
- `docker --version` — Verified Docker was installed
- `docker info` — Checked the current status of the Docker environment
- `docker pull nginx` — Downloaded the official Nginx image from Docker Hub
- `docker run -d -p 8080:80 --name my-nginx nginx` — Ran the Nginx container in detached mode with port mapping
- `curl http://localhost:8080` — Verified the web server was live
- `docker ps` — Listed running containers
- `docker stop my-nginx` — Stopped the running container
- `docker ps -a` — Verified the container had stopped
- `docker rm my-nginx` — Removed the container completely

## Skills Learned
- Understanding the architectural differences between VMs and containers
- Using the Docker CLI to pull images, run containers, and expose ports
- Managing the full lifecycle of a container (start, stop, remove)
- Verifying a running service using `curl`
- Documenting technical procedures clearly in Markdown

## Challenges Encountered
No major challenges were encountered during this lab. Having already completed Laboratories 1–3, I was familiar with using the KillerCoda terminal and navigating the GitHub repository, which made the Docker commands in this lab straightforward to follow. The main adjustment was learning new Docker-specific syntax (such as `-d`, `-p`, and `--name`), but the commands worked as expected on the first attempt.
