# Client Recommendations

## Client A – Startup Company
**Scenario:** A startup company wants to launch a new mobile application. Their budget is limited, but they expect rapid growth within the next few years.

**Recommended Platform: AWS**

AWS is a strong fit for this startup because of its pay-as-you-go pricing, generous free tier, and flexible scaling options that let a small team start cheap and grow without re-architecting later. Its broad ecosystem also means the startup can find pre-built solutions and community support for almost any problem as the app grows. Services they could use include:
- **Amazon EC2** or **AWS Lambda** – to host the application backend, with Lambda allowing serverless, pay-per-use compute ideal for a limited budget.
- **Amazon S3** – for storing app assets, user uploads, and backups affordably.
- **Amazon RDS** – for a managed relational database that can scale as the user base grows.

## Client B – University
**Scenario:** A university already uses Windows Server, Microsoft 365, and Active Directory, and wants to migrate some services to the cloud.

**Recommended Platform: Microsoft Azure**

Since the university already relies heavily on Microsoft's ecosystem, Azure is the natural choice because it integrates directly with Windows Server and Active Directory, minimizing migration friction and retraining. Azure Hybrid Benefit can also reduce licensing costs by letting the university reuse its existing Microsoft licenses in the cloud. This makes for a smoother, lower-risk transition than moving to a non-Microsoft platform. Services they could use include:
- **Microsoft Entra ID (Azure AD)** – to extend their existing Active Directory identity management into the cloud.
- **Azure Virtual Machines** – to migrate existing Windows Server workloads with minimal changes.
- **Azure Virtual Desktop** or **Microsoft 365 integration services** – to support staff and student remote access.

## Client C – AI Research Company
**Scenario:** A research company develops Artificial Intelligence and Machine Learning applications that require high-performance computing.

**Recommended Platform: Google Cloud Platform (GCP)**

GCP is best suited for this client because Google built Kubernetes and offers some of the most advanced AI/ML infrastructure available, including custom-built TPUs (Tensor Processing Units) designed specifically for machine learning workloads. Its tools are built with data scientists and ML engineers in mind, and its Kubernetes leadership makes it easier to manage large, containerized training pipelines. This gives the research company access to cutting-edge performance and tooling that AWS and Azure don't match as closely in this niche. Services they could use include:
- **Vertex AI** – to build, train, and deploy machine learning models end-to-end.
- **Compute Engine with TPU/GPU support** – for high-performance model training.
- **BigQuery** – for large-scale data analysis and preparing training datasets.

## Client D – Global E-Commerce Company
**Scenario:** A multinational online shopping company serves customers around the world and requires highly available infrastructure with automatic scaling.

**Recommended Platform: AWS**

AWS is the strongest choice here due to its unmatched global footprint of Regions and Availability Zones, which allows the company to serve customers worldwide with low latency and high redundancy. Its auto-scaling and load-balancing tools are mature and battle-tested at massive scale, having been proven by Amazon's own retail business. This combination of global reach and elastic scaling makes AWS well-suited for handling unpredictable traffic spikes (e.g., sales events) without downtime. Services they could use include:
- **Amazon EC2 Auto Scaling** – to automatically adjust compute capacity based on traffic.
- **Elastic Load Balancing (ELB)** – to distribute incoming traffic across multiple servers/regions.
- **Amazon CloudFront** – a global content delivery network (CDN) to speed up content delivery to customers worldwide.

---

## Multi-Cloud Decision Matrix

| Business Requirement | Recommended Platform | Justification |
|---|---|---|
| Startup Company | AWS | Flexible pay-as-you-go pricing and easy scaling for limited budgets |
| Enterprise Organization | AWS | Broadest service catalog and mature enterprise tooling |
| Microsoft Environment | Microsoft Azure | Native integration with Windows Server, AD, and Microsoft 365 |
| AI / Machine Learning | Google Cloud Platform | Purpose-built AI/ML tools (Vertex AI, TPUs) and strong data analytics |
| Kubernetes Deployment | Google Cloud Platform | Created Kubernetes; GKE is the most mature managed Kubernetes service |
| Global Web Application | AWS | Largest global infrastructure footprint with proven auto-scaling |

