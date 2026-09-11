# Mission Reflection

Working with Docker containers helped me understand how containerization differs from using a Virtual Machine (VM). A Docker container can start much faster because it does not need to boot an entire operating system. Instead, it shares the host system’s kernel while running the application and its required dependencies. In comparison, installing an operating system on a VM takes more time because it requires creating a virtual machine, allocating resources, installing the OS, and completing the initial configuration. Docker therefore makes it easier and faster to create an environment for testing and running applications.

Port mapping, such as `-p 8080:80`, is necessary when running a web server inside a container because the container has its own network environment. Port 80 is where the web server listens inside the container, while port 8080 is the port exposed on the host machine. This mapping allows users to access the web server through the host at port 8080.

When `docker rm` is used, the container itself and the data stored inside its writable container layer are removed. This means that data that was not stored in a volume or another persistent storage location can be lost. This taught me the importance of using volumes when data needs to survive beyond the lifetime of a container.

Containerization can also improve collaboration between software developers and IT operations teams. Developers can package applications with their dependencies, while operations teams can run the same containerized environment consistently. This reduces environment-related problems and supports the DevOps approach of automation, faster deployment, and continuous integration.

My GitHub portfolio is also evolving as I document each laboratory activity and reflection. Instead of simply containing code, it is becoming a record of my learning progress in cloud computing. Each completed laboratory gives me more practical experience and demonstrates the skills I am developing throughout the course.

