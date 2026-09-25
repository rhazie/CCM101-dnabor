# Mission Reflection

Writing a `docker-compose.yml` file made me realize how much easier Docker can make the work of a cloud engineer. Instead of typing many `docker run` commands one by one, creating networks, and setting up each container separately, I can put everything in one file. After that, I only need one command to start the whole application. This saves time and also reduces the chance of making mistakes. It also makes the setup easier to repeat or share with other people.

I also learned that small mistakes in a YAML file can cause problems. For example, using a Tab instead of spaces for indentation can make Docker Compose unable to read the file correctly. Since YAML uses indentation to organize the different settings, even a small spacing mistake can cause an error. Because of this, I learned that I need to be more careful when writing and checking my Compose files.

Using environment variables such as `MYSQL_PASSWORD` was also something I found useful. Instead of putting important information directly into the application, environment variables allow us to change things like passwords and other settings without changing the actual application code. This makes the application more flexible and easier to configure in different environments. It also showed me how important it is to keep configuration separate from the main application.

One of the most interesting parts of this mission was seeing how quickly we could deploy Nextcloud. What would normally take a lot of time to install and configure manually was done in just a few minutes using Docker Compose. Seeing the web server and database work together through containers made me understand why containers are useful in cloud computing.

Since Mission 1, my understanding of cloud computing has changed a lot. Before, I mostly thought of cloud computing as simply using servers through the internet. Now, I understand that it also involves automation, containers, networking, and making systems easy to deploy and manage. I am starting to see infrastructure as something that can be written, organized, and repeated like code instead of having to configure everything manually each time.
