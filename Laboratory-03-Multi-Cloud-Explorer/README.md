## Checkpoint 7 – Linux Server Investigation

### Server Specs (collected via KillerCoda)
- **Operating System:** Ubuntu 24.04.4 LTS (Noble Numbat)
- **CPU:** 1 vCPU — Intel Xeon E312xx (Sandy Bridge), 2.0GHz
- **Memory:** 1.9 GiB total RAM
- **Disk Space:** 19 GB total, 13 GB available (`/dev/vda1`)

*(See `screenshots/killercoda-terminal.png` for the terminal output.)*

### If this Linux server were migrated to the cloud, which AWS, Azure, and GCP services could host it?

Given the small footprint of this server (1 vCPU, ~2GB RAM, ~19GB disk), it's a lightweight workload that fits comfortably into the entry-level virtual machine tiers of all three major cloud providers.

- **AWS:** This server could be hosted on an **Amazon EC2** instance, using a small instance type such as `t3.micro` or `t3.small` (burstable, low-cost instances well suited to this CPU/RAM size). It could also use **Amazon EBS** for the equivalent of the 19GB disk volume, and would qualify for AWS's Free Tier given its low resource needs.

- **Azure:** The equivalent host would be an **Azure Virtual Machine**, using a similarly small size such as `B1s` or `B2s` from the Azure B-series (burstable VMs designed for light, variable workloads). Storage would map to an **Azure Managed Disk**.

- **GCP:** On Google Cloud, this server matches a small **Compute Engine** instance, such as an `e2-small` or `e2-micro` machine type, which are optimized for cost-efficient, low-resource workloads. Disk storage would use a **Persistent Disk**.

All three platforms offer comparable low-cost, burstable VM types for a server this size, making this a straightforward "lift-and-shift" migration regardless of which provider is chosen — the decision would likely come down to which platform's other services (identity, networking, ecosystem) the organization already uses.
