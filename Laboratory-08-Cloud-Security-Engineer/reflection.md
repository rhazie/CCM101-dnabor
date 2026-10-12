# Checkpoint 7: Mission Reflection

## 1. How does a host-based firewall protect a server even if the physical network perimeter is breached?

A host-based firewall protects a server by controlling incoming and outgoing network connections directly on the server. Even if an attacker gets past the network's outer defenses, the firewall can still block unauthorized connections to protected services. This is an example of defense in depth because multiple layers of security help protect the system. It provides another layer of protection instead of depending only on the network firewall.

## 2. Why is managing open network ports critical to reducing a server's attack surface?

Managing open network ports is important because each open port can provide access to a service running on the server. If a service has a security vulnerability, an attacker might exploit it to gain unauthorized access. Closing unnecessary ports and allowing only required services reduces the number of possible entry points. This makes it easier to manage security and reduces the chances of attackers finding a weakness.

## 3. Why is it dangerous to leave a database port like 3306 open to the public internet?

Leaving MySQL port 3306 open to the public internet allows anyone to attempt a connection to the database. Attackers could try guessing passwords, exploiting software vulnerabilities, or accessing sensitive information. In an enterprise environment, this could lead to data theft, financial losses, or damage to the company's reputation. Database access should therefore be restricted to trusted systems and authorized users.

## 4. How did completing this mission change your perspective on how easily a server can be compromised?

This mission helped me realize how quickly a server can become vulnerable when its services are exposed without proper security rules. Before configuring the firewall, the web application was accessible through port 8080. I learned that a few simple commands can improve protection by controlling which connections are allowed. I also understood why allowing SSH before enabling the firewall is important to avoid losing remote access.

## 5. How does your GitHub portfolio currently look with eight completed missions?

My GitHub portfolio now shows my progress through eight completed cloud security and operations missions. Organizing each mission into its own folder with documentation and screenshots makes my work easier to understand and review. Keeping a consistent structure across the missions also makes the repository look more organized. This portfolio demonstrates the practical skills I have developed in server management, troubleshooting, and security configuration.
