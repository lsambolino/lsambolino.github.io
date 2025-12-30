---
layout: page
title: Progetti
permalink: /it/projects/
lang: it
alternate_url: /projects/
---

# Progetti in evidenza

Alcuni progetti che mostrano la mia esperienza su infrastrutture cloud, Kubernetes e ingegneria DevOps.

---

## 🔧 Automazione certificati TLS in Kubernetes

<div style="background: #f8f9fa; padding: 20px; border-left: 4px solid #667eea; margin: 20px 0; border-radius: 5px;" markdown="1">

### Problema
Gestione manuale dei certificati TLS nei cluster Kubernetes con scadenze impreviste che causavano interruzioni, come descritto nel mio [articolo sull'incidente critico](/kubernetes/2024/09/10/tls-expiration-causes-major-kubernetes-disruption.html).

### Soluzione
- **cert-manager** per il rilascio automatico dei certificati
- **Monitoring & alerting** con Prometheus per tracciare le scadenze
- **GitOps** per il ciclo di vita dei certificati
- **Runbook** automatizzati per la risposta agli incidenti

### Tecnologie
`Kubernetes` `cert-manager` `Prometheus` `Grafana` `GitOps` `OpenShift`

### Impatto
- ✅ Eliminata la gestione manuale dei certificati
- ✅ 100% prevenzione di outage legati a scadenze
- ✅ Ridotto il tempo di risposta da ore a minuti
- ✅ Maggiore fiducia del team nell'affidabilità della piattaforma

### Link
- 📝 [Leggi il case study →](/kubernetes/2024/09/10/tls-expiration-causes-major-kubernetes-disruption.html)

</div>

---

## ☁️ Automazione infrastruttura multi-cloud

<div style="background: #f8f9fa; padding: 20px; border-left: 4px solid #764ba2; margin: 20px 0; border-radius: 5px;" markdown="1">

### Problema
Un'azienda enterprise doveva distribuire infrastrutture coerenti su AWS, Azure e GCP riducendo al minimo l'intervento manuale.

### Soluzione
- **Moduli Terraform** riutilizzabili per il provisioning multi-cloud
- **Playbook Ansible** per la configurazione
- **Pipeline CI/CD** per deployment automatici
- **Policy-as-Code** con OPA per la conformità

### Tecnologie
`Terraform` `Ansible` `AWS` `Azure` `GCP` `Jenkins` `GitLab CI` `OPA`

### Impatto
- ✅ -80% sul tempo di deployment
- ✅ Infrastrutture coerenti sui 3 cloud
- ✅ Conformità automatizzata
- ✅ Self-service per i team di sviluppo

</div>

---

## 🐳 Migrazione a piattaforma container

<div style="background: #f8f9fa; padding: 20px; border-left: 4px solid #667eea; margin: 20px 0; border-radius: 5px;" markdown="1">

### Problema
Applicazioni legacy su VM da containerizzare e migrare su OpenShift per migliorare scalabilità e manutenzione.

### Soluzione
- **Containerizzazione** con Docker e buildah
- **Helm chart** per il packaging
- **Service mesh** con Istio
- **Osservabilità** con Prometheus, Grafana e Jaeger

### Tecnologie
`OpenShift` `Kubernetes` `Docker` `Helm` `Istio` `Prometheus` `Grafana` `Jaeger`

### Impatto
- ✅ Migrati 50+ servizi
- ✅ Frequenza di rilascio +10x
- ✅ -40% costi infrastrutturali
- ✅ Maggiore osservabilità e debugging

</div>

---

## 📊 Piattaforma di osservabilità SRE

<div style="background: #f8f9fa; padding: 20px; border-left: 4px solid #764ba2; margin: 20px 0; border-radius: 5px;" markdown="1">

### Problema
Assenza di monitoraggio centralizzato rendeva difficile mantenere SLO e gestire incidenti.

### Soluzione
- **Metriche** con Prometheus e Thanos
- **Log** con stack ELK (Elasticsearch, Logstash, Kibana)
- **Tracing** distribuito con Jaeger
- **SLO dashboard** e alerting proattivo

### Tecnologie
`Prometheus` `Thanos` `Grafana` `Elasticsearch` `Logstash` `Kibana` `Jaeger` `AlertManager`

### Impatto
- ✅ Monitoraggio centralizzato per 100+ servizi
- ✅ MTTR ridotto del 60%
- ✅ SLO visibili per i servizi critici
- ✅ Alert proattivi per evitare impatti ai clienti

</div>

---

## 🔐 Implementazione sicurezza Zero-Trust

<div style="background: #f8f9fa; padding: 20px; border-left: 4px solid #667eea; margin: 20px 0; border-radius: 5px;" markdown="1">

### Problema
Il modello di sicurezza perimetrale non era sufficiente per applicazioni cloud-native e lavoro remoto.

### Soluzione
- **Service mesh (Istio)** per mTLS e autenticazione service-to-service
- **Accesso basato su identità** con OAuth2/OIDC
- **Segmentazione di rete** con VMware NSX-T
- **Policy enforcement** su ogni layer

### Tecnologie
`Istio` `Envoy` `OAuth2` `OIDC` `VMware NSX-T` `Kubernetes Network Policies`

### Impatto
- ✅ Eliminato il movimento laterale
- ✅ Controllo di accesso granulare
- ✅ Compliance con framework (ISO 27001, SOC 2)
- ✅ Audit trail e visibilità migliorate

</div>

---

## 🚀 Vuoi collaborare?

Sono interessato a progetti sfidanti su infrastrutture cloud, Kubernetes e automazione DevOps.

[Contatti →](/it/contact) | [Certificazioni →](/it/certifications) | [Blog →](/it/blog)
