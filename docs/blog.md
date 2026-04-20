---
layout: page
title: Blog
permalink: /blog/
alternate_url: /it/blog/
---

Sharing experiences, insights, and lessons learned from working with cloud infrastructure, Kubernetes, and DevOps practices.

## All Posts

<ul class="post-list">
{% for post in site.posts %}
{% unless post.lang == 'it' %}
  <li>
    <h2 class="post-link"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
    <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}{% if post.author %} · {{ post.author }}{% endif %}</p>
    {% if post.excerpt %}
      <p>{{ post.excerpt | strip_html | truncatewords: 50 }}</p>
    {% endif %}
    <p><a href="{{ post.url | relative_url }}">Read more →</a></p>
  </li>
{% endunless %}
{% endfor %}
</ul>

## Topics

Kubernetes · Cloud Infrastructure · DevOps · SRE · Automation · OpenShift · Best Practices · Troubleshooting

## Why I Write

I believe in sharing knowledge and lessons learned from real-world experience. Posts focus on:

- Real-world incidents and solutions
- Practical tutorials
- Best practices and patterns
- Case studies
- Lessons learned
- Study notes and certifications

## Stay Updated

- [Subscribe via RSS](/feed.xml)
- [LinkedIn](https://www.linkedin.com/in/luigi-sambolino)
- [GitHub](https://github.com/lsambolino)

---

[Contact](/contact) · [Projects](/projects) · [Home](/)
