# CloudNova Technologies - Enterprise Cloud Architecture

## Executive Summary
This repository contains the complete infrastructure code, hardening policies, and disaster recovery automation for the **BookStack Wiki + MySQL 8.0 Multi-Tier Stack** deployed on Ubuntu Server at CloudNova Technologies.

## System Specifications
* **Virtualization:** Type 2 Hypervisor (VirtualBox / VMware) Headless Ubuntu Server
* **Network Topology:** Bridged Adapter with UFW Firewall hardening
* **Containerization:** Docker & Docker Compose
* **Application:** LinuxServer BookStack (Port 80)
* **Database:** MySQL 8.0 (Internal Bridge Network on Port 3306)
* **Storage:** Persistent Docker Volumes (`db_data` and `bookstack_data`)
* **Disaster Recovery:** Automated Cron job running daily `mysqldump` backups with a 7-day retention policy.

## Quick Links
* [Operational Manual](./operational-manual.md)
* [Docker Compose Configuration](./docker-compose.yml)
* [Automation Script](./automation-script.sh)
