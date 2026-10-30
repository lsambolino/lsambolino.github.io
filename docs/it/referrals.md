---
layout: page
title: Referral
permalink: /it/referrals/
lang: it
alternate_url: /referrals/
---

Lavoro in Accenture e posso presentare un referral interno per chi si candida alle posizioni aperte in Italia. Non sono un recruiter, non gestisco il processo di selezione, e niente in questa pagina è un'offerta di lavoro o una dichiarazione per conto di Accenture: è una pagina personale che descrive una cosa che posso fare per persone con cui ho parlato.

## Non candidarti subito — l'ordine conta

{: .referral-warning}
**Se ti candidi per conto tuo prima, il referral non può più esserti associato.** Il referral deve esistere nel sistema *prima* che parta il processo di selezione. Dopo che l'ho inviato ricevi una mail dal sistema Accenture con un link, e *a quel punto* ti candidi alla stessa posizione. Hai sei mesi per farlo, altrimenti il referral decade.

## Come funziona

1. **Mi scrivi** con il modulo qui sotto. Per iniziare basta il link al profilo LinkedIn: niente CV allegato in questa fase.
2. **Ci parliamo** 20–30 minuti: cosa hai fatto davvero, cosa cerchi, quale delle posizioni aperte ha senso. Faccio referral solo per persone con cui ho parlato, perché il modulo mi chiede *come conosco la persona* e cosa penso di lei, e non sono disposto a rispondere a quella domanda su uno sconosciuto.
3. **Invio il referral** nel sistema interno su una posizione specifica, con il tuo CV e una motivazione scritta — comprese le cose che il titolo di un CV nasconde.
4. **Ti candidi** a quella stessa posizione con il link che ricevi, e da lì in poi se ne occupa il recruiting. Da quel momento non ho alcuna influenza sull'esito e non vedo altro che una riga di stato.

Dico di no abbastanza spesso: di solito perché non c'è nulla di aperto che corrisponda, o perché un requisito formale dell'annuncio esclude la candidatura. Non è un giudizio su di te — un referral su un ruolo che non ti calza ti fa perdere tempo e costa a me credibilità.

## Cosa esclude un referral in partenza

Sono regole del programma, non mie. Il referral non può valere per chi:

- è **già dipendente Accenture** — in quel caso ci si candida dal marketplace interno;
- **lavora oggi per un cliente Accenture**, o per una società affiliata o controllata (per esempio Avanade);
- è **contractor, somministrato o stagista** in Accenture in questo momento — se ne riparla dodici mesi dopo la fine del contratto;
- è un **ex dipendente** uscito da meno di dodici mesi;
- finirebbe a **riportare direttamente a me** o ad avermi come People Lead.

Un'ultima cosa che vale la pena sapere: nessuno in Accenture, o per suo conto, ti chiederà mai di pagare per partecipare a una selezione. Se succede, non siamo noi.

## Posizioni aperte in Italia

{% assign feed = site.data.accenture_jobs %}
{% if feed and feed.jobs %}
**{{ feed.total }} posizioni** aperte all'ultimo aggiornamento ({{ feed.fetched_at | date: "%d/%m/%Y" }}). La lista viene ricostruita ogni giorno dalla ricerca pubblica di Accenture; ogni titolo porta all'annuncio ufficiale, dove trovi la descrizione completa. **I link vanno alla descrizione, non alla candidatura** — vedi l'avviso qui sopra.

La colonna *Laurea* riporta la fascia di istruzione associata all'annuncio: è un primo filtro utile, non la parola definitiva. Il requisito che vincola sta nel testo dell'annuncio e cambia tra "richiesta" e "preferibile": leggilo prima di dare per persa una posizione.

<input type="text" id="job-filter" class="job-filter" placeholder="Filtra per titolo, sede o area…" aria-label="Filtra le posizioni">
<p id="job-filter-count" class="job-filter-count"></p>

<table class="job-table" id="job-table">
  <thead>
    <tr><th>Posizione</th><th>Sede</th><th>Livello</th><th>Esperienza</th><th>Laurea</th></tr>
  </thead>
  <tbody>
  {% for job in feed.jobs %}
    <tr data-haystack="{{ job.title | downcase | escape }} {{ job.locations | join: ' ' | downcase | escape }} {{ job.area | join: ' ' | downcase | escape }} {{ job.seniority | downcase | escape }} {{ job.id | downcase }}">
      <td><a href="{{ job.url }}" rel="nofollow noopener" target="_blank">{{ job.title }}</a><br><small>{{ job.id }}</small></td>
      <td>{{ job.locations | join: ", " }}</td>
      <td>{{ job.seniority }}{% if job.remote and job.remote != "" %}<br><small>{{ job.remote }}</small>{% endif %}</td>
      <td>{{ job.years }}</td>
      <td>{% if job.education contains "Bachelor Degree" %}Prevista{% else %}Non richiesta{% endif %}</td>
    </tr>
  {% endfor %}
  </tbody>
</table>

<script>
(function () {
  var box = document.getElementById('job-filter');
  var rows = Array.prototype.slice.call(document.querySelectorAll('#job-table tbody tr'));
  var count = document.getElementById('job-filter-count');
  function render() {
    var q = box.value.trim().toLowerCase();
    var shown = 0;
    rows.forEach(function (row) {
      var hit = !q || row.getAttribute('data-haystack').indexOf(q) !== -1;
      row.style.display = hit ? '' : 'none';
      if (hit) { shown++; }
    });
    count.textContent = q ? shown + ' posizioni su ' + rows.length : '';
  }
  box.addEventListener('input', render);
  render();
})();
</script>
{% else %}
La lista delle posizioni è in aggiornamento. Nel frattempo la ricerca pubblica di Accenture per l'Italia è [qui](https://www.accenture.com/it-it/careers/jobsearch).
{% endif %}

## Scrivimi

{% if site.referral_form_action %}
<form class="referral-form" action="{{ site.referral_form_action }}" method="POST">
  <input type="hidden" name="_subject" value="Richiesta referral da lsambolino.github.io">
  <p style="display:none"><label>Lascia vuoto <input name="_gotcha" tabindex="-1" autocomplete="off"></label></p>

  <label>Nome e cognome<span aria-hidden="true">*</span>
    <input type="text" name="name" required autocomplete="name"></label>

  <label>Email<span aria-hidden="true">*</span>
    <input type="email" name="email" required autocomplete="email"></label>

  <label>Link al profilo LinkedIn
    <input type="url" name="linkedin" placeholder="https://www.linkedin.com/in/…"></label>

  <label>Dove puoi lavorare<span aria-hidden="true">*</span>
    <input type="text" name="location" required placeholder="Milano, Roma, da remoto…"></label>

  <label>ID della posizione, se ne hai trovata una nella lista
    <input type="text" name="requisition" placeholder="R00313799"></label>

  <label>Cosa fai oggi e da quanto<span aria-hidden="true">*</span>
    <textarea name="background" rows="3" required></textarea></label>

  <label>Perché questa posizione, e cosa il CV non dice
    <textarea name="motivation" rows="4"></textarea></label>

  <fieldset>
    <legend>Conferma — da questo dipende se un referral può valere</legend>
    <label class="check"><input type="checkbox" name="not_applied" required> <strong>Non</strong> mi sono candidato a questa posizione e non lo farò finché il referral non è stato inviato.</label>
    <label class="check"><input type="checkbox" name="not_employee" required> Non sono dipendente, contractor, somministrato o stagista Accenture.</label>
    <label class="check"><input type="checkbox" name="not_client" required> Non lavoro per un cliente Accenture né per una società affiliata o controllata (Avanade e simili).</label>
    <label class="check"><input type="checkbox" name="not_recent_alumnus" required> Se ho lavorato in Accenture, sono uscito da più di dodici mesi.</label>
  </fieldset>

  <fieldset>
    <legend>Consensi</legend>
    <label class="check"><input type="checkbox" name="consent_referral" required> Acconsento a essere presentato come referral e al trattamento dei miei dati da parte di Accenture nell'ambito del processo di selezione.</label>
    <label class="check"><input type="checkbox" name="consent_data" required> Acconsento a che Luigi conservi i dati inviati qui al solo scopo di questo referral.</label>
  </fieldset>

  <button type="submit">Invia</button>
</form>
{% else %}
Il modulo non è ancora collegato. Nel frattempo mi trovi su [LinkedIn](https://www.linkedin.com/in/lsambolino).
{% endif %}

### Che fine fanno i dati che mandi

Arrivano alla mia casella personale. Li conservo solo per preparare e seguire il referral, non li passo a nessuno fuori dal processo di recruiting Accenture, e li cancello quando il referral si chiude o se me lo chiedi. Non mandare il CV da questo modulo: te lo chiedo io, se arriviamo a quel punto.

---

[Chi sono](/it/about/) · [Progetti](/it/projects/) · [Contatti](/it/contact/)
