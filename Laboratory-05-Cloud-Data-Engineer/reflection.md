# Mission Reflection

**1. Why is object storage better suited for storing millions of photos compared to a traditional block storage hard drive?**

Object storage is better suited because it doesn't rely on a fixed, rigid structure the way block storage does. Block storage divides data into blocks attached to a single volume, which becomes difficult to scale once you're dealing with massive, ever-growing amounts of unstructured files like images. Object storage treats each file as an independent object with its own metadata and unique ID, stored in a flat structure that can scale almost infinitely without needing to resize volumes or worry about running out of space on a single drive.

**2. How did using Docker make it easier to deploy the MinIO storage server?**

Docker made deployment significantly easier than setting up a storage server manually. Instead of installing dependencies, configuring the OS, and managing software versions by hand, I was able to spin up a fully functional S3-compatible storage server with a single command. Docker packaged everything MinIO needed into one container, so I didn't have to worry about compatibility issues — I could deploy, verify, and access the service within minutes.

**3. What is a "bucket" in the context of cloud storage?**

A bucket is essentially a container used to organize and hold objects, similar to a top-level folder. Every object stored in the cloud belongs to a bucket, and buckets typically have their own access permissions, naming rules, and configurations, which makes them useful for separating different types of data or different clients' data.

**4. How do you think large enterprise companies ensure their object storage data is not lost if the physical server crashes?**

I believe large companies achieve this through data replication — storing multiple copies of the same object across different physical servers, and often across different geographic data centers. This way, if one server or even an entire data center fails, the data still exists elsewhere and can be recovered without loss, ensuring high availability and durability.

**5. How is your confidence in navigating the Linux command line growing?**

This lab boosted my confidence with the Linux command line. Running Docker commands, checking container status, and troubleshooting a failed image pull by finding and using an alternative image mirror felt like real hands-on problem-solving, and it's made me more comfortable navigating and diagnosing issues in a terminal environment.
