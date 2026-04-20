---
layout: page
title: Progetti
permalink: /it/projects/
lang: it
alternate_url: /projects/
---

Alcuni progetti che mostrano la mia esperienza su infrastrutture cloud, Kubernetes e ingegneria DevOps.

## Automazione certificati TLS in Kubernetes

**Problema** — gestione manuale dei certificati TLS nei cluster Kubernetes con scadenze impreviste che causavano interruzioni (vedi il [case study](/kubernetes/2024/09/10/tls-expiration-causes-major-kubernetes-disruption.html)).

**Soluzione** — rotazione automatica con cert-manager, alerting Prometheus sulle scadenze, GitOps per il ciclo di vita, runbook automatizzati.

**Stack** — Kubernetes, cert-manager, Prometheus, Grafana, GitOps, OpenShift.

**Impatto** — eliminata la gestione manuale, prevenuti gli outage da scadenze, tempo di risposta ridotto da ore a minuti.

## Datacenter Assessment Engine

Motore di assessment datacenter basato su Ansible per discovery e analisi automatica dei componenti infrastrutturali.

**Stack** — Ansible, Shell, Linux.

**Impatto** — discovery rapido dell'infrastruttura, baseline per migrazioni, documentazione automatica.

[Vedi su GitHub](https://github.com/lsambolino/datacenter_assessment)

## DROP — Distributed Router Project

Middleware cooperativo per il controllo e la gestione distribuita di router IP, con nodi di rete logici costruiti tramite collaborazione distribuita.

**Stack** — JavaScript, distributed systems, SDN.

[Vedi su GitHub](https://github.com/lsambolino/dropgit)

## Piattaforma di osservabilità SRE

**Problema** — mancanza di monitoraggio centralizzato per mantenere SLO e gestire incidenti.

**Soluzione** — metriche con Prometheus e Thanos, log con stack ELK, tracing con Jaeger, dashboard SLO e alerting.

**Stack** — Prometheus, Thanos, Grafana, Elasticsearch, Logstash, Kibana, Jaeger, AlertManager.

**Impatto** — monitoraggio centralizzato per 100+ servizi, MTTR ridotto del 60%, SLO visibili, alert proattivi.

---

[Contatti](/it/contact) · [Certificazioni](/it/certifications) · [Blog](/it/blog)
