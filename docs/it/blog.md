---
layout: page
title: Blog
permalink: /it/blog/
lang: it
alternate_url: /blog/
---

# Blog tecnico

Esperienze, insight e lezioni apprese lavorando su infrastrutture cloud, Kubernetes e pratiche DevOps.

---

## 📚 Tutti gli articoli

{% for post in site.posts %}
{% if post.lang == 'it' %}
<div style="background: #f8f9fa; padding: 25px; border-left: 4px solid #667eea; margin: 25px 0; border-radius: 5px;">
  <h2 style="margin-top: 0;">
    <a href="{{ post.url }}" style="color: #333; text-decoration: none;">{{ post.title }}</a>
  </h2>
  <p style="color: #666; margin: 10px 0;">
    📅 {{ post.date | date: "%d %B %Y" }}
    {% if post.author %} • ✍️ {{ post.author }}{% endif %}
  </p>
  {% if post.excerpt %}
  <p style="line-height: 1.7; margin: 15px 0;">
    {{ post.excerpt | strip_html | truncatewords: 50 }}
  </p>
  {% endif %}
  <a href="{{ post.url }}" style="color: #667eea; font-weight: 600; text-decoration: none;">Leggi di più →</a>
</div>
{% endif %}
{% endfor %}

---

## 🏷️ Argomenti

<div style="display: flex; gap: 15px; flex-wrap: wrap; margin: 30px 0;">
  <span style="background: #326ce5; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">Kubernetes</span>
  <span style="background: #667eea; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">Cloud</span>
  <span style="background: #764ba2; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">DevOps</span>
  <span style="background: #FF6B6B; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">SRE</span>
  <span style="background: #4ECDC4; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">Automazione</span>
  <span style="background: #45B7D1; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">OpenShift</span>
  <span style="background: #96CEB4; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">Best Practice</span>
  <span style="background: #FFEAA7; color: #333; padding: 8px 20px; border-radius: 20px; font-weight: 600;">Troubleshooting</span>
</div>

---

## 💡 Perché scrivo

- 🔍 **Incidenti reali e soluzioni**
- 🛠️ **Tutorial pratici**
- 📊 **Best practice**
- 🎯 **Case study**
- 💭 **Lesson learned**

---

## 📬 Rimani aggiornato

- 📧 [Abbonati via RSS](/feed.xml)
- 💻 [Seguimi su GitHub](https://github.com/lsambolino)

---

## 💬 Partecipa

- Commenta gli articoli (GitHub Discussions)
- Condividi con il tuo network
- Suggerisci temi che vorresti vedere

[Contatti](/it/contact) | [Progetti](/it/projects) | [Home](/it/)
