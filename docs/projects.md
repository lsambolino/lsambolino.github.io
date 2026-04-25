---
layout: page
title: Projects
permalink: /projects/
alternate_url: /it/projects/
---

## Technical Expertise

**Container orchestration** — Kubernetes (CKA), OpenShift (EX280), Helm, Operators, Docker, Buildah, Podman, containerd, CRI-O.

**Cloud platforms** — AWS, Azure, GCP — certified on all three. IaaS, managed Kubernetes (EKS/AKS/GKE), networking, identity.

**Infrastructure as Code & CI/CD** — Ansible, Saltstack, Terraform, Jenkins, GitLab CI, GitHub Actions, Tekton, ArgoCD.

**Observability** — Prometheus, Thanos, Grafana, AlertManager, ELK, Fluentd/Fluent Bit, Jaeger. SLO/SLA/SLI, error budgets, incident response.

**Networking & security** — VMware NSX-T, Kubernetes Network Policies, NGINX, HAProxy, OAuth2/OIDC, TLS/PKI, RBAC.

**Linux & scripting** — RHEL/CentOS, Ubuntu/Debian; Bash, Python, Go.

**Methodologies** — SRE (DevOps Institute certified), DevOps, GitOps, IaC, 12-Factor, Microservices, ITIL 4.

[How these map to my knowledge framework →](/framework/) · [All certifications →](/certifications/)

---

## Projects

### Kubernetes TLS Certificate Automation

**Problem** — manual TLS certificate management in Kubernetes clusters led to unexpected expirations and major service disruptions (see [case study](/kubernetes/2024/09/10/tls-expiration-causes-major-kubernetes-disruption.html)).

**Solution** — automated certificate rotation with cert-manager, Prometheus alerting for expiration tracking, GitOps workflows for lifecycle management, and runbook automation.

**Stack** — Kubernetes, cert-manager, Prometheus, Grafana, GitOps, OpenShift.

**Impact** — eliminated manual certificate work, prevented expiration outages, reduced incident response from hours to minutes.

### Datacenter Assessment Engine

Ansible-based datacenter assessment engine that performs automated discovery and analysis of infrastructure across multiple target systems.

**Stack** — Ansible, Shell, Linux.

**Impact** — rapid infrastructure discovery, baseline for migration planning, automated documentation.

[View on GitHub](https://github.com/lsambolino/datacenter_assessment)

### DROP — Distributed Router Project

The Distributed SW ROuter Project enables cooperative middleware for distributed IP-router control and management, allowing logical network nodes to be built through distributed collaboration.

**Stack** — JavaScript, distributed systems, SDN.

[View on GitHub](https://github.com/lsambolino/dropgit)

### SRE Observability Platform

**Problem** — lack of centralized monitoring made it difficult to maintain SLOs and respond to incidents.

**Solution** — metrics with Prometheus and Thanos, log aggregation with the ELK stack, distributed tracing with Jaeger, SLO dashboards and alerting.

**Stack** — Prometheus, Thanos, Grafana, Elasticsearch, Logstash, Kibana, Jaeger, AlertManager.

**Impact** — centralized monitoring for 100+ services, MTTR reduced by 60%, SLO visibility across critical services, proactive alerting.

---

[Get in touch](/contact) · [Certifications](/certifications) · [Blog](/blog)
