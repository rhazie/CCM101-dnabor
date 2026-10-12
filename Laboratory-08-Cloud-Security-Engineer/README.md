# Laboratory 08 - Cloud Security Engineer

## Mission Overview
In this lab, I deployed an Nginx web application inside a Docker container and configured the server firewall to improve its security. I allowed SSH access for remote administration, blocked incoming connections by default, and opened port 8080 to make the web application accessible.

## Objectives
- Deploy and run a web application using Docker.
- Understand how a firewall protects a server from unauthorized incoming connections.
- Apply the principle of default deny by blocking incoming traffic unless it is explicitly allowed.
- Allow necessary services, such as SSH and the web application, through the firewall.
- Verify firewall rules and test whether the web application is accessible.

## Commands Executed

### Deploy the application
```bash
docker run -d --name secure-web-app -p 8080:80 nginx
docker ps
curl http://localhost:8080
```

### Configure the firewall
```bash
sudo ufw allow ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo ufw status verbose
```

### Open the web port and verify
```bash
sudo ufw allow 8080/tcp
sudo ufw status numbered
curl http://localhost:8080
```

## Skills Learned
I learned how to deploy a web application using Docker and verify that it is running with `docker ps` and `curl`. I also learned how to configure UFW to block incoming connections by default while allowing necessary traffic. The order of the commands is important because allowing SSH before enabling the firewall helps prevent losing remote access. Finally, I learned how to open port 8080 and check the firewall rules to ensure the web application can be accessed.
