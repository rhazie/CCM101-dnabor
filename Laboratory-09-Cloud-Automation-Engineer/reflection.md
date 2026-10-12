# Mission Reflection

**1. Why is automation critical when managing hundreds of cloud servers?**

Automation is important because it allows administrators to perform tasks quickly and consistently across many servers. If I had to create backups manually on 500 servers, it would take a lot of time and increase the chance of forgetting a server. Automated scripts and scheduled tasks help reduce human error and keep important tasks running regularly.

**2. What are the dangers of automation?**

Automation can cause serious problems when a script contains a mistake because the error may repeat across many servers very quickly. For example, a destructive command could accidentally delete important files if it runs on the wrong directory. This is why scripts should be tested on one machine first before being used across a larger environment.

**3. How was writing a Bash script different from creating a Docker Compose YAML file?**

Writing a Bash script involved creating commands that execute in order to perform tasks such as creating and compressing backups. In contrast, Docker Compose YAML describes how services, containers, and their settings should be configured. I learned that Bash is useful for automating procedures, while Docker Compose helps organize and manage an application's environment.

**4. How has your understanding of Cloud Computing changed from Laboratory 1 to Laboratory 9?**

At the beginning, I mainly understood cloud computing as using servers and services over the internet. After completing these missions, I understand that cloud computing also involves managing resources, deploying applications, monitoring systems, securing servers, and automating repetitive tasks. Laboratory 08 taught me about firewall configuration, while Laboratory 09 showed me how scripts and cron jobs can make server management more reliable.

**5. Which role did you enjoy the most, and why?**

I enjoyed the Cloud Automation Engineer role because I learned how to create a Bash script that backs up application data automatically. I found it useful to see how a few commands could replace repetitive manual work. Learning about executable permissions and cron scheduling also helped me understand how administrators keep important server tasks running consistently.
