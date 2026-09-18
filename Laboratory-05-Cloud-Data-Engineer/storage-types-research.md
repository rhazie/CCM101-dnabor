# Types of Cloud Storage

| Storage Type | Description | Primary Use Case | Cloud Provider Example |
|---|---|---|---|
| Block Storage | Splits data into fixed-size blocks, each with its own address, and attaches directly to a server like a virtual hard drive | Databases, OS boot volumes, and apps that need fast, low-latency read/write | AWS EBS |
| File Storage | Organizes data in a hierarchical folder/file structure, accessed over a network like a shared drive | Shared file systems, home directories, content repositories | AWS EFS |
| Object Storage | Stores data as discrete objects (data + metadata + unique ID) in a flat namespace, accessed via API/HTTP | Unstructured data at massive scale — images, videos, backups | AWS S3 |

## Why Object Storage for User-Uploaded Images

Object Storage is the best choice for storing the client's user-uploaded images because it scales virtually infinitely without needing to manage volume sizes like block storage does. Each image is stored as an object with rich metadata and can be accessed directly via a simple URL or API call, making it easy to integrate into a web application. It's also significantly cheaper per GB than block storage for large volumes of rarely-modified files like photos.
