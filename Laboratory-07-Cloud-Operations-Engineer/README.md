# Laboratory 07: Cloud Operations Engineer

## Mission Overview

CloudNova needed to make sure their client's campaign website was running properly and could be monitored for problems. I started a Docker-based website, tested it using `curl`, and used Linux and Docker monitoring commands to check system resources, storage, processes, logs, and container performance. The goal was to identify possible problems quickly and understand what was happening on the server.

## Objectives

* Learn how to monitor a Linux server's CPU, memory, and storage usage.
* Learn how to run, test, and monitor a Docker container.
* Use logs and resource statistics to identify possible website or server problems.

## Monitoring Commands Executed

| Command                                                | Purpose                                                                                            |
| ------------------------------------------------------ | -------------------------------------------------------------------------------------------------- |
| `free -h`                                              | Checks the system's available and used memory (RAM).                                               |
| `df -h`                                                | Checks available and used disk storage.                                                            |
| `top`                                                  | Displays running processes and shows CPU and memory usage in real time.                            |
| `docker run -d -p 8080:80 --name client-website nginx` | Creates and starts an Nginx web server container and makes it accessible through port 8080.        |
| `curl http://localhost:8080`                           | Tests if the client website is reachable and responding.                                           |
| `curl http://localhost:8080/hidden-admin-page`         | Tests a specific page and helps check how the server handles a missing or restricted page.         |
| `docker logs client-website`                           | Shows the container's logs, including website requests and errors that can help identify problems. |
| `docker stats`                                         | Displays real-time CPU, memory, network, and other resource usage of running Docker containers.    |

## Skills Learned

* I can check Linux memory and disk usage using `free -h` and `df -h`.
* I can monitor running processes and resource usage with `top`.
* I can create and run a website using a Docker container.
* I can test whether a web server is responding using `curl`.
* I can inspect Docker logs and container resource usage to help troubleshoot problems.

