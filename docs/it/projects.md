---
layout: page
title: Progetti
permalink: /it/projects/
lang: it
alternate_url: /projects/
---

## Competenze tecniche

**Container orchestration** — Kubernetes (CKA), OpenShift (EX280), Helm, Operators, Docker, Buildah, Podman, containerd, CRI-O.

**Piattaforme cloud** — AWS, Azure, GCP — certificato su tutte e tre. IaaS, Kubernetes gestito (EKS/AKS/GKE), networking, identity.

**Infrastructure as Code & CI/CD** — Ansible, Saltstack, Terraform, Jenkins, GitLab CI, GitHub Actions, Tekton, ArgoCD.

**Observability** — Prometheus, Thanos, Grafana, AlertManager, ELK, Fluentd/Fluent Bit, Jaeger. SLO/SLA/SLI, error budget, incident response.

**Networking & sicurezza** — VMware NSX-T, Kubernetes Network Policies, NGINX, HAProxy, OAuth2/OIDC, TLS/PKI, RBAC.

**Linux & scripting** — RHEL/CentOS, Ubuntu/Debian; Bash, Python, Go.

**Metodologie** — SRE (DevOps Institute certified), DevOps, GitOps, IaC, 12-Factor, Microservices, ITIL 4.

[Come si collegano nel mio knowledge framework →](/it/framework/) · [Tutte le certificazioni →](/it/certifications/)

---

## Progetti

### Automazione certificati TLS in Kubernetes

**Problema** — gestione manuale dei certificati TLS nei cluster Kubernetes con scadenze impreviste che causavano interruzioni (vedi il [case study](/kubernetes/2024/09/10/tls-expiration-causes-major-kubernetes-disruption.html)).

**Soluzione** — rotazione automatica con cert-manager, alerting Prometheus sulle scadenze, GitOps per il ciclo di vita, runbook automatizzati.

**Stack** — Kubernetes, cert-manager, Prometheus, Grafana, GitOps, OpenShift.

**Impatto** — eliminata la gestione manuale, prevenuti gli outage da scadenze, tempo di risposta ridotto da ore a minuti.

### Datacenter Assessment Engine

Motore di assessment datacenter basato su Ansible per discovery e analisi automatica dei componenti infrastrutturali.

**Stack** — Ansible, Shell, Linux.

**Impatto** — discovery rapido dell'infrastruttura, baseline per migrazioni, documentazione automatica.

[Vedi su GitHub](https://github.com/lsambolino/datacenter_assessment)

### DROP — Distributed Router Project

Middleware cooperativo per il controllo e la gestione distribuita di router IP, con nodi di rete logici costruiti tramite collaborazione distribuita.

**Stack** — JavaScript, distributed systems, SDN.

[Vedi su GitHub](https://github.com/lsambolino/dropgit)

### Piattaforma di osservabilità SRE

**Problema** — mancanza di monitoraggio centralizzato per mantenere SLO e gestire incidenti.

**Soluzione** — metriche con Prometheus e Thanos, log con stack ELK, tracing con Jaeger, dashboard SLO e alerting.

**Stack** — Prometheus, Thanos, Grafana, Elasticsearch, Logstash, Kibana, Jaeger, AlertManager.

**Impatto** — monitoraggio centralizzato per 100+ servizi, MTTR ridotto del 60%, SLO visibili, alert proattivi.

---

[Contatti](/it/contact) · [Certificazioni](/it/certifications) · [Blog](/it/blog)
