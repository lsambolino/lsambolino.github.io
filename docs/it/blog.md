---
layout: page
title: Blog
permalink: /it/blog/
lang: it
alternate_url: /blog/
---

Esperienze, insight e lezioni apprese lavorando su infrastrutture cloud, Kubernetes e pratiche DevOps.

## Tutti gli articoli

<ul class="post-list">
{% for post in site.posts %}
{% if post.lang == 'it' %}
  <li>
    <h2 class="post-link"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
    <p class="post-meta">{{ post.date | date: "%-d %B %Y" }}{% if post.author %} · {{ post.author }}{% endif %}</p>
    {% if post.excerpt %}
      <p>{{ post.excerpt | strip_html | truncatewords: 50 }}</p>
    {% endif %}
    <p><a href="{{ post.url | relative_url }}">Leggi di più →</a></p>
  </li>
{% endif %}
{% endfor %}
</ul>

## Argomenti

Kubernetes · Cloud · DevOps · SRE · Automazione · OpenShift · Best Practice · Troubleshooting

## Perché scrivo

- Incidenti reali e soluzioni
- Tutorial pratici
- Best practice
- Case study
- Lesson learned

## Rimani aggiornato

- [Abbonati via RSS](/feed.xml)
- [LinkedIn](https://www.linkedin.com/in/luigi-sambolino)
- [GitHub](https://github.com/lsambolino)

---

[Contatti](/it/contact) · [Progetti](/it/projects) · [Home](/it/)
