# Cloud Infrastructure Components

## 1. Compute

**Purpose:**
Compute provides the processing power needed to run programs and applications. It includes resources such as the CPU and RAM of a computer or virtual machine.

**Importance in Cloud Computing:**
Compute is important because cloud users can rent processing resources instead of purchasing and maintaining physical servers. These resources can also be increased or decreased depending on the workload.

**KillerCoda Relation:**
In the KillerCoda environment, the virtual machine represents the compute resource. I observed that the machine had 1 CPU core and about 1.9 GiB of RAM using commands such as `lscpu` and `free -h`. These resources allowed the Linux system and the laboratory commands to run.

## 2. Storage

**Purpose:**
Storage is used to keep data, files, applications, and operating system information. Unlike temporary processing resources, storage is mainly used for keeping information available for later use.

**Importance in Cloud Computing:**
Storage is important because cloud applications need a place to save their data. Cloud storage can also be expanded when more space is needed, without requiring the user to physically install another disk.

**KillerCoda Relation:**
In the KillerCoda environment, the storage was the disk available to the virtual machine. Using the `df -h` command, I saw a 19G volume mounted through `/dev/vda1`. This storage was used by the Ubuntu environment to hold the operating system, files, and other data created during the laboratory activity.

## 3. Networking

**Purpose:**
Networking allows computers and services to communicate with each other. It connects a server to other systems, users, and external networks.

**Importance in Cloud Computing:**
Networking is essential in cloud computing because cloud services often communicate across different servers and locations. It also helps control access to resources through technologies such as IP addresses, firewalls, and subnets.

**KillerCoda Relation:**
In the KillerCoda environment, I found the network interface named `enp1s0`. It had the IP address `172.30.1.2`, which I identified using the `ip a` command. This network interface allowed the virtual machine to communicate within the KillerCoda environment.

## 4. Operating System

**Purpose:**
The operating system manages the computer's hardware and provides the environment where applications and commands can run. It acts as a layer between the hardware and the software.

**Importance in Cloud Computing:**
The operating system is important because it affects how applications are installed, managed, secured, and deployed. It also provides the kernel and system services required by applications and technologies such as containers.

**KillerCoda Relation:**
The operating system used in my KillerCoda environment was Ubuntu 24.04.4 LTS. The system was running Linux kernel 6.8.0-138. I was able to use Linux commands and tools in this environment because the operating system provided the necessary interface for managing the virtual machine and its resources.

## Conclusion

The four components work together to create a functional cloud environment. Compute provides processing power, storage keeps data, networking enables communication, and the operating system manages the resources and provides a platform for applications. In the KillerCoda laboratory, I was able to observe these components directly through the virtual machine and Linux commands.
