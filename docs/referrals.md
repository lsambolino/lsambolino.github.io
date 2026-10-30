---
layout: page
title: Referrals
permalink: /referrals/
alternate_url: /it/referrals/
---

I work at Accenture and I can submit an internal referral for people applying to open roles in Italy. I am not a recruiter, I don't run the hiring process, and nothing on this page is an offer of employment or a statement on behalf of Accenture — it's a personal page describing something I can do for people I've spoken to.

## Don't apply yet — the order matters

{: .referral-warning}
**If you apply on your own first, the referral can no longer be attached to you.** The referral has to exist in the system *before* the recruitment process starts. Once I submit it you'll receive an email from Accenture's system with a link, and *then* you apply to the same requisition. You have six months to do it, otherwise the referral lapses.

## How it works

1. **You write to me** using the form below. A LinkedIn profile URL is enough to start — no CV attachment at this stage.
2. **We talk** for 20–30 minutes: what you've actually done, what you're looking for, which of the open roles fits. I only refer people I've spoken to, because the referral form asks me how I know you and what I think of you, and I'm not willing to answer that about a stranger.
3. **I submit the referral** in the internal system against a specific requisition, with your CV and a written argument for why you fit — including the things a CV title hides.
4. **You apply** to that same requisition using the link you receive, and recruiting takes it from there. From that point I have no influence on the outcome, and I won't have visibility beyond a status line.

I say no fairly often — usually because nothing currently open matches, or because a formal requirement in the posting rules the application out. That's not a judgement on you; a referral into a role you don't fit wastes your time and costs me credibility.

## What rules me out before we start

These come from the referral programme itself, not from me. I can't make a referral count for someone who:

- is **currently an Accenture employee** — you apply directly through the internal careers marketplace instead;
- **currently works for an Accenture client**, or for an Accenture affiliate or subsidiary (Avanade, for instance);
- is a **current Accenture contractor, temporary worker or intern** — possible again twelve months after the contract ends;
- is a **former employee** who left less than twelve months ago;
- would **report to me directly** or have me as their People Lead.

One more thing worth knowing: no one at Accenture, or acting on its behalf, will ever ask you to pay a fee of any kind as part of recruiting. If someone does, it isn't us.

## Open roles in Italy

{% assign feed = site.data.accenture_jobs %}
{% if feed and feed.jobs %}
**{{ feed.total }} positions** open at the last refresh ({{ feed.fetched_at | date: "%d %b %Y" }}). This list is rebuilt daily from Accenture's public job search; each title links to the official posting so you can read the full description. **The links go to the description, not to the application** — see the warning above.

The *Degree* column reflects the education band the posting carries, which is a useful first filter but not the final word: the binding requirement is in the text of the posting itself, and it varies between "required" and "preferred". Read it before deciding a role is out of reach.

<input type="text" id="job-filter" class="job-filter" placeholder="Filter by title, location or area…" aria-label="Filter roles">
<p id="job-filter-count" class="job-filter-count"></p>

<table class="job-table" id="job-table">
  <thead>
    <tr><th>Role</th><th>Location</th><th>Level</th><th>Experience</th><th>Degree</th></tr>
  </thead>
  <tbody>
  {% for job in feed.jobs %}
    <tr data-haystack="{{ job.title | downcase | escape }} {{ job.locations | join: ' ' | downcase | escape }} {{ job.area | join: ' ' | downcase | escape }} {{ job.seniority | downcase | escape }} {{ job.id | downcase }}">
      <td><a href="{{ job.url }}" rel="nofollow noopener" target="_blank">{{ job.title }}</a><br><small>{{ job.id }}</small></td>
      <td>{{ job.locations | join: ", " }}</td>
      <td>{{ job.seniority }}{% if job.remote and job.remote != "" %}<br><small>{{ job.remote }}</small>{% endif %}</td>
      <td>{{ job.years }}</td>
      <td>{% if job.education contains "Bachelor Degree" %}Expected{% else %}Not required{% endif %}</td>
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
    count.textContent = q ? shown + ' of ' + rows.length + ' roles match' : '';
  }
  box.addEventListener('input', render);
  render();
})();
</script>
{% else %}
The list of open roles is being rebuilt. In the meantime, Accenture's public job search for Italy is [here](https://www.accenture.com/it-it/careers/jobsearch).
{% endif %}

## Write to me

{% if site.referral_form_action %}
<form class="referral-form" action="{{ site.referral_form_action }}" method="POST">
  <input type="hidden" name="_subject" value="Referral request from lsambolino.github.io">
  <p style="display:none"><label>Leave this empty <input name="_gotcha" tabindex="-1" autocomplete="off"></label></p>

  <label>Your name<span aria-hidden="true">*</span>
    <input type="text" name="name" required autocomplete="name"></label>

  <label>Email<span aria-hidden="true">*</span>
    <input type="email" name="email" required autocomplete="email"></label>

  <label>LinkedIn profile URL
    <input type="url" name="linkedin" placeholder="https://www.linkedin.com/in/…"></label>

  <label>Where you can work<span aria-hidden="true">*</span>
    <input type="text" name="location" required placeholder="Milan, Rome, remote…"></label>

  <label>Requisition ID, if you've found one in the list above
    <input type="text" name="requisition" placeholder="R00313799"></label>

  <label>What you do now, and roughly how long you've been doing it<span aria-hidden="true">*</span>
    <textarea name="background" rows="3" required></textarea></label>

  <label>Why this role, and anything your CV doesn't show
    <textarea name="motivation" rows="4"></textarea></label>

  <fieldset>
    <legend>Please confirm — these decide whether a referral can count at all</legend>
    <label class="check"><input type="checkbox" name="not_applied" required> I have <strong>not</strong> applied to this role, and I won't apply until the referral is submitted.</label>
    <label class="check"><input type="checkbox" name="not_employee" required> I am not currently an Accenture employee, contractor, temporary worker or intern.</label>
    <label class="check"><input type="checkbox" name="not_client" required> I don't currently work for an Accenture client, affiliate or subsidiary (Avanade and similar).</label>
    <label class="check"><input type="checkbox" name="not_recent_alumnus" required> If I previously worked at Accenture, I left more than twelve months ago.</label>
  </fieldset>

  <fieldset>
    <legend>Consent</legend>
    <label class="check"><input type="checkbox" name="consent_referral" required> I agree to being referred, and to Accenture processing my data as part of its recruiting process.</label>
    <label class="check"><input type="checkbox" name="consent_data" required> I agree to Luigi holding the details I send here for the purpose of this referral only.</label>
  </fieldset>

  <button type="submit">Send</button>
</form>
{% else %}
The form isn't wired up yet. Until it is, reach me through [LinkedIn](https://www.linkedin.com/in/lsambolino).
{% endif %}

### What happens to what you send

It reaches my personal mailbox. I keep it only to prepare and track the referral, I don't pass it to anyone outside Accenture's recruiting process, and I delete it once the referral is closed or if you ask me to. Don't send a CV through this form — I'll ask for one if we get that far.

---

[About me](/about/) · [Projects](/projects/) · [Contact](/contact/)
