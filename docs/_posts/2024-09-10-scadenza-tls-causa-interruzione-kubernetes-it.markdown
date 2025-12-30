---
layout: default
title:  "Scadenza TLS in Kubernetes: bomba a orologeria che causa interruzioni critiche"
date:   2024-09-10 19:30:12 +0200
categories: kubernetes
lang: it
---
Immagina la scena: una giornata di routine nelle nostre operazioni tecniche si trasforma improvvisamente in una corsa contro il tempo ad alta tensione. Il nostro team di sviluppo è nel pieno di deployment critici quando si scontra con un muro—un'interruzione imprevista del servizio che minaccia di far deragliare il loro flusso di lavoro. Quella che segue è una storia di troubleshooting, lavoro di squadra e alcune rivelazioni sorprendenti.

La chiamata inaspettata
Tutto è iniziato con una chiamata urgente dal nostro team di sviluppo. Stavano affrontando un'interruzione grave nei loro deployment, ed era chiaro che qualcosa era andato storto nei nostri cluster Kubernetes di pre-produzione (staging). Man mano che la confusione iniziale si placava, sapevamo di dover scavare a fondo per arrivare al nocciolo del problema.


Identificazione dei colpevoli

1. **I certificati scaduti.** Il primo indizio è arrivato da una fonte inaspettata: certificati TLS scaduti. Nel mondo di Kubernetes, questi certificati sono gli eroi non celebrati della comunicazione sicura. Quando scadono, l'intera rete di fiducia del sistema vacilla. Abbiamo capito rapidamente che non si trattava di un piccolo intoppo ma di un ostacolo significativo. Per prima cosa, abbiamo eseguito **`kubeadm certs check-expiration`**:

{% highlight bash %}
CERTIFICATE                EXPIRES                  RESIDUAL TIME   CERTIFICATE AUTHORITY   EXTERNALLY MANAGED
admin.conf                 Dec 30, 2020 23:36 UTC   364d                                    no
apiserver                  Dec 30, 2020 23:36 UTC   364d            ca                      no
apiserver-etcd-client      Dec 30, 2020 23:36 UTC   364d            etcd-ca                 no
apiserver-kubelet-client   Dec 30, 2020 23:36 UTC   364d            ca                      no
controller-manager.conf    Dec 30, 2020 23:36 UTC   364d                                    no
etcd-healthcheck-client    Dec 30, 2020 23:36 UTC   364d            etcd-ca                 no
etcd-peer                  Dec 30, 2020 23:36 UTC   364d            etcd-ca                 no
etcd-server                Dec 30, 2020 23:36 UTC   364d            etcd-ca                 no
front-proxy-client         Dec 30, 2020 23:36 UTC   364d            front-proxy-ca          no
scheduler.conf             Dec 30, 2020 23:36 UTC   364d                                    no

CERTIFICATE AUTHORITY   EXPIRES                  RESIDUAL TIME   EXTERNALLY MANAGED
ca                      Dec 28, 2029 23:36 UTC   9y              no
etcd-ca                 Dec 28, 2029 23:36 UTC   9y              no
front-proxy-ca          Dec 28, 2029 23:36 UTC   9y              no
{% endhighlight %}

2. **La rete di dipendenze.** Man mano che svelavamo i vari livelli del problema, abbiamo scoperto una complessa rete di dipendenze tra i servizi. I servizi Kubernetes si affidano l'uno all'altro in modi intricati, e comprendere queste connessioni era fondamentale.

3. **La configurazione disordinata.** Ci siamo anche imbattuti nella configurazione YAML dell'apiserver, che era un disastro di righe obsolete e non necessarie. Era come trovare disordine in uno spazio di lavoro un tempo organizzato—una distrazione da eliminare per vedere chiaramente il problema.

4. **Rinnovo dei certificati.** Il certificato dell'apiserver era scaduto dopo il tempo predefinito (1 anno). Con le cause alla radice identificate, ci siamo messi al lavoro sul rinnovo dei certificati scaduti, assicurandoci che i nuovi certificati fossero correttamente emessi e integrati.

5. **Pulizia della configurazione.** Successivamente, abbiamo affrontato il file YAML dell'apiserver disordinato. Abbiamo eliminato le configurazioni obsolete, semplificando e razionalizzando il setup.

6. **Test e verifica.** Con le modifiche in atto, abbiamo eseguito una serie di test per assicurarci che tutto funzionasse senza problemi. Ogni test superato confermava che avevamo ripristinato le normali operazioni e risolto le interruzioni.

Riflessioni sul percorso
Questo incidente è stato un potente promemoria dell'importanza della gestione proattiva dei certificati e della comprensione delle intricate dipendenze all'interno di un cluster Kubernetes. È stata un'esperienza impegnativa, ma che alla fine ha rafforzato il nostro approccio e i nostri processi.

Andando avanti, continueremo a condividere il nostro percorso e le nostre intuizioni, perfezionando le nostre pratiche per prevenire interruzioni future. Restate sintonizzati per ulteriori aggiornamenti e lezioni apprese dalle nostre continue avventure nel mondo di Kubernetes.

Conclusione
Gestire cluster Kubernetes va oltre il semplice deployment e scaling—richiede un'attenzione meticolosa alla sicurezza e all'igiene dell'infrastruttura. L'interruzione inaspettata causata dai certificati TLS scaduti ci ha insegnato lezioni preziose sull'importanza della gestione proattiva dei certificati e degli audit regolari del cluster.

Rafforzando i nostri processi di monitoraggio e semplificando le configurazioni, non solo abbiamo risolto questo problema critico ma abbiamo anche fortificato il nostro ambiente per le sfide future. Questa esperienza è un promemoria che negli ecosistemi cloud-native, anche componenti apparentemente minori come i certificati possono essere bombe a orologeria pronte a esplodere.

Rimanere vigili e preparati sarà fondamentale mentre continuiamo a navigare nel complesso ma gratificante panorama di Kubernetes.
