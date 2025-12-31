---
layout: page
title: Projects
permalink: /projects/
alternate_url: /it/projects/
---

Here are some highlighted projects that showcase my expertise in cloud infrastructure, Kubernetes, and DevOps engineering.

---

## 🔧 Kubernetes TLS Certificate Automation

<div style="background: #f8f9fa; padding: 20px; border-left: 4px solid #667eea; margin: 20px 0; border-radius: 5px;" markdown="1">

### Problem
Manual TLS certificate management in Kubernetes clusters led to unexpected expirations causing major service disruptions, as documented in my [blog post about a critical incident](/kubernetes/2024/09/10/tls-expiration-causes-major-kubernetes-disruption.html).

### Solution
Implemented automated certificate rotation system using:
- **cert-manager** for automated certificate provisioning
- **Monitoring & alerting** with Prometheus for expiration tracking
- **GitOps workflows** for certificate lifecycle management
- **Runbook automation** for incident response

### Technologies
`Kubernetes` `cert-manager` `Prometheus` `Grafana` `GitOps` `OpenShift`

### Impact
- ✅ Eliminated manual certificate management
- ✅ 100% prevention of expiration-related outages
- ✅ Reduced incident response time from hours to minutes
- ✅ Improved team confidence in platform reliability

### Links
- 📝 [Read the full case study →](/kubernetes/2024/09/10/tls-expiration-causes-major-kubernetes-disruption.html)

</div>

---

## 📦 Datacenter Assessment Engine

<div style="background: #f8f9fa; padding: 20px; border-left: 4px solid #764ba2; margin: 20px 0; border-radius: 5px;" markdown="1">

### Overview
Ansible-based datacenter assessment engine that provides automated discovery and analysis of infrastructure components across multiple target systems.

### Solution
- **Automated discovery** of datacenter resources
- **Custom target lists** via Ansible inventory
- **Comprehensive reporting** of infrastructure baseline
- **Shell scripting** for data extraction and analysis

### Technologies
`Ansible` `Shell` `Linux` `Infrastructure Assessment` `Automation`

### Impact
- ✅ Rapid datacenter infrastructure discovery
- ✅ Baseline assessment for migration planning
- ✅ Automated documentation generation
- ✅ Reduced manual audit time

### Links
- 👁️ [View on GitHub →](https://github.com/lsambolino/datacenter_assessment)

</div>

---

## 🌐 DROP - Distributed Router Project

<div style="background: #f8f9fa; padding: 20px; border-left: 4px solid #667eea; margin: 20px 0; border-radius: 5px;" markdown="1">

### Overview
The Distributed SW ROuter Project (DROP) enables cooperative middleware for distributed IP-router control and management, allowing logical network nodes to be built through distributed collaboration.

### Solution
- **Distributed router control** and management middleware
- **Cooperative networking** paradigm
- **JavaScript-based** implementation
- **Logical network node** abstraction

### Technologies
`JavaScript` `Networking` `Distributed Systems` `SDN`

### Impact
- ✅ Novel approach to distributed router management
- ✅ Flexible network topology creation
- ✅ Middleware abstraction for router control
- ✅ Foundation for software-defined networking research

### Links
- 👁️ [View on GitHub →](https://github.com/lsambolino/dropgit)

</div>

---

## 📊 SRE Observability Platform

<div style="background: #f8f9fa; padding: 20px; border-left: 4px solid #764ba2; margin: 20px 0; border-radius: 5px;" markdown="1">

### Problem
Lack of centralized monitoring and alerting made it difficult to maintain SLOs and respond to incidents effectively.

### Solution
Built comprehensive observability platform:
- **Metrics collection** with Prometheus and Thanos
- **Log aggregation** with ELK stack (Elasticsearch, Logstash, Kibana)
- **Distributed tracing** with Jaeger
- **SLO tracking** and alerting dashboards

### Technologies
`Prometheus` `Thanos` `Grafana` `Elasticsearch` `Logstash` `Kibana` `Jaeger` `AlertManager`

### Impact
- ✅ Centralized monitoring for 100+ services
- ✅ MTTR reduced by 60%
- ✅ SLO visibility for all critical services
- ✅ Proactive alerting preventing customer impact

</div>

---

## 🚀 Want to Collaborate?

I'm always interested in challenging projects involving cloud infrastructure, Kubernetes, and DevOps automation. 

[Get in touch →](/contact) | [View my certifications →](/certifications) | [Read my blog →](/blog)
