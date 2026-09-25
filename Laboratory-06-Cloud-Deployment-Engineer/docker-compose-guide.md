# Docker Compose Guide

## What does the services: block do?
The `services:` block is the main section of a docker-compose.yml file where each container 
that makes up the application is defined. In this project, it defines two services: `database` 
and `app`. For each service, it specifies details like which image to use, what environment 
variables to pass in, and which ports to expose. Compose reads this block and uses it as the 
blueprint for building and starting every container in the stack.

## How did the Nextcloud app container know how to find the database container?
The Nextcloud app container found the database through the `MYSQL_HOST=database` environment 
variable. When Docker Compose starts a stack, it automatically creates a private network for 
all the services and lets them resolve each other by service name, acting like internal DNS. 
Since the database service is named `database` in the compose file, the app container can 
reach it just by using that name as the hostname, without needing to know its actual IP address.

## What is the difference between docker run and docker-compose up -d?
`docker run` starts a single container at a time. To connect multiple containers together this 
way, you would have to manually create a shared network and run each container separately with 
matching flags, which is slow and error-prone for multi-container applications. `docker-compose 
up -d` instead reads the entire docker-compose.yml file and starts every defined service at 
once, automatically creating the network and connecting the containers together. It also lets 
you manage the whole stack — starting, stopping, or rebuilding all services — with a single 
command instead of managing each container individually.
