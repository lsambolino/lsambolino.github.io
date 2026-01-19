---
layout: post
title: "AZ-104: Azure Administrator Certification Guide"
date: 2026-01-19 00:00:00 +0000
categories: azure certification
tags: az-104 azure-administrator cloud
---

As I study for the AZ-104 (Azure Administrator) certification, I'm documenting key concepts and knowledge to share with others on the same learning journey.

## Overview

The AZ-104 certification validates the skills needed to manage Azure subscriptions, secure identities, administer the infrastructure, and manage data and applications.

## Topics Covered

### 1. Manage Azure Identities and Governance
- Manage Azure AD users and groups
- Manage access with RBAC
- Manage subscriptions and governance

### 2. Implement and Manage Storage
- Create and configure storage accounts
- Manage data in Azure Storage
- Configure Azure Files and Azure Blob Storage

### 3. Deploy and Manage Compute Resources
- Create and configure virtual machines
- Automate deployment using Azure Resource Manager templates
- Create and configure containers
- Create and configure App Service

### 4. Configure and Manage Virtual Networking
- Implement virtual networks
- **Configure network security groups and application security groups**
  - **NSG Port Configuration**: To allow Remote Desktop Management and Secured HTTPS, configure inbound security rules to allow port 3389 (RDP) and allow port 443 (HTTPS)
  - **Application Security Groups (ASG)**: When you have multiple subnets (e.g., 4 subnets with 10 VMs each) and need to allow inbound traffic over TCP 8080 to specific VMs (e.g., 2 VMs per subnet), use Application Security Groups. ASGs allow you to group together the network interfaces from multiple virtual machines, then use the group as the source or destination in an NSG rule. **Important**: All network interfaces must be in the same virtual network. Associate the NSG to each subnet and use the ASG in the rule to target only the specific VMs that need access, rather than managing individual IP addresses.
  - **NSG Rule Priority**: Rule priority is critical in NSGs - lower numbers are evaluated first. Example scenario:
    
    ![NSG Rule Priority Example](/assets/images/nsg-priority-example.png)
    
    In the diagram above, NSG1 contains VM1 and VM2 with the following outbound security rules:
    - Rule1 (Priority: 900) - BlockInternet - Port: 80, Protocol: TCP, Action: Block
    - Rule2 (Priority: 1000) - AllowInternet - Port: 80, Protocol: TCP, Action: Allow
    
    In this case, Rule1 (priority 900) will be evaluated first and **block** internet access on port 80. To ensure internet access to VM1 on port 80 is allowed, you must change the priority of Rule2 to a number lower than 900 (e.g., 800 or 850) so it gets evaluated before the blocking rule. Remember: **Lower priority number = higher precedence**.
- Configure Azure DNS
- Configure Azure ExpressRoute
- **User-Defined Routes (UDR)**: If you need to ensure all network traffic passes through a virtual machine named VM1 (a network inspection appliance), you need to configure a user-defined route. Azure automatically creates a route table for each subnet on an Azure virtual network, but custom routes allow you to override the default routing behavior and direct traffic through specific network appliances for inspection or filtering.

### 5. Monitor and Maintain Azure Resources
- Monitor resources using Azure Monitor
- Implement backup and recovery
- Manage Azure updates

## Key Resources
- [Microsoft Learn - AZ-104](https://learn.microsoft.com/en-us/training/paths/az-104-administrator-prerequisites/)
- [Exam Skills Outline](https://learn.microsoft.com/en-us/certifications/exams/az-104/)

## Study Progress
- [ ] Module 1: Identity
- [ ] Module 2: Governance and Compliance
- [ ] Module 3: Azure Administration
- [ ] Practice Exams

---

*This post will be updated as I progress through the certification study materials.*