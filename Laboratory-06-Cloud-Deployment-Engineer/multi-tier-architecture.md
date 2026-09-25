# Two-Tier Architecture

A **Two-Tier Architecture** is a software architecture that separates an application into two main layers: the **Web/Application Tier** and the **Database Tier**. Each tier has a specific responsibility and works together to provide the complete application.

## The Web/Application Tier

The **Web/Application Tier** is responsible for interacting with the user and handling application requests. It serves the user interface, receives **HTTP requests** from users, processes application logic, and sends responses back to the user's browser.

## The Database Tier

The **Database Tier** is responsible for storing and managing the application's **persistent data**. This may include user accounts, passwords, product information, orders, and other data that needs to remain available even after the application is restarted.

## Why Separate Them?

Separating the web server and database into two containers makes the application easier to **manage, maintain, and scale**. It also improves security because the database can be isolated from direct user access, while each container can be updated or restarted independently without affecting the other tier.
