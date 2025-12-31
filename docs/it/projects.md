---
layout: page
title: Progetti
permalink: /it/projects/
lang: it
alternate_url: /projects/
---

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

## 📦 Datacenter Assessment Engine

<div style="background: #f8f9fa; padding: 20px; border-left: 4px solid #764ba2; margin: 20px 0; border-radius: 5px;" markdown="1">

### Panoramica
Motore di assessment datacenter basato su Ansible per discovery e analisi automatica dei componenti infrastrutturali.

### Soluzione
- **Discovery automatico** delle risorse datacenter
- **Target list personalizzabili** via Ansible inventory
- **Reporting completo** della baseline infrastrutturale
- **Shell scripting** per estrazione e analisi dati

### Tecnologie
`Ansible` `Shell` `Linux` `Infrastructure Assessment` `Automation`

### Impatto
- ✅ Discovery rapido dell'infrastruttura datacenter
- ✅ Assessment baseline per pianificare migrazioni
- ✅ Generazione automatica documentazione
- ✅ Riduzione tempo di audit manuale

### Link
- 👁️ [Vedi su GitHub →](https://github.com/lsambolino/datacenter_assessment)

</div>

---

## 🌐 DROP - Distributed Router Project

<div style="background: #f8f9fa; padding: 20px; border-left: 4px solid #667eea; margin: 20px 0; border-radius: 5px;" markdown="1">

### Panoramica
Il Distributed SW ROuter Project (DROP) abilita un middleware cooperativo per il controllo e la gestione distribuita di router IP, permettendo la costruzione di nodi di rete logici attraverso collaborazione distribuita.

### Soluzione
- **Controllo router distribuito** e middleware di gestione
- **Paradigma networking cooperativo**
- **Implementazione JavaScript**
- **Astrazione nodi di rete logici**

### Tecnologie
`JavaScript` `Networking` `Distributed Systems` `SDN`

### Impatto
- ✅ Approccio innovativo alla gestione router distribuiti
- ✅ Creazione flessibile di topologie di rete
- ✅ Astrazione middleware per controllo router
- ✅ Fondamento per ricerca su software-defined networking

### Link
- 👁️ [Vedi su GitHub →](https://github.com/lsambolino/dropgit)

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

## 🚀 Vuoi collaborare?

Sono interessato a progetti sfidanti su infrastrutture cloud, Kubernetes e automazione DevOps.

[Contatti →](/it/contact) | [Certificazioni →](/it/certifications) | [Blog →](/it/blog)
