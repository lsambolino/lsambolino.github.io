---
layout: page
title: Blog
permalink: /blog/
alternate_url: /it/blog/
alternate_url: /it/blog/
---

# Technical Blog

Sharing experiences, insights, and lessons learned from working with cloud infrastructure, Kubernetes, and DevOps practices.

---

## 📚 All Posts

{% for post in site.posts %}
{% unless post.lang == 'it' %}
<div style="background: #f8f9fa; padding: 25px; border-left: 4px solid #667eea; margin: 25px 0; border-radius: 5px;">
  <h2 style="margin-top: 0;">
    <a href="{{ post.url }}" style="color: #333; text-decoration: none;">{{ post.title }}</a>
  </h2>
  <p style="color: #666; margin: 10px 0;">
    📅 {{ post.date | date: "%B %d, %Y" }}
    {% if post.author %} • ✍️ {{ post.author }}{% endif %}
  </p>
  {% if post.excerpt %}
  <p style="line-height: 1.7; margin: 15px 0;">
    {{ post.excerpt | strip_html | truncatewords: 50 }}
  </p>
  {% endif %}
  <a href="{{ post.url }}" style="color: #667eea; font-weight: 600; text-decoration: none;">Read more →</a>
</div>
{% endunless %}
{% endfor %}

---

## 🏷️ Topics I Write About

<div style="display: flex; gap: 15px; flex-wrap: wrap; margin: 30px 0;">
  <span style="background: #326ce5; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">Kubernetes</span>
  <span style="background: #667eea; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">Cloud Infrastructure</span>
  <span style="background: #764ba2; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">DevOps</span>
  <span style="background: #FF6B6B; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">SRE</span>
  <span style="background: #4ECDC4; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">Automation</span>
  <span style="background: #45B7D1; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">OpenShift</span>
  <span style="background: #96CEB4; color: white; padding: 8px 20px; border-radius: 20px; font-weight: 600;">Best Practices</span>
  <span style="background: #FFEAA7; color: #333; padding: 8px 20px; border-radius: 20px; font-weight: 600;">Troubleshooting</span>
</div>

---

## 💡 Why I Write

I believe in sharing knowledge and lessons learned from real-world experience. My blog posts focus on:

- 🔍 **Real-world incidents and solutions** - Learning from production challenges
- 🛠️ **Practical tutorials** - Step-by-step guides for common tasks
- 📊 **Best practices** - Industry-standard approaches and patterns
- 🎯 **Case studies** - Deep dives into complex projects
- 💭 **Lessons learned** - Reflections on successes and failures
- 📚 **Study notes and certifications** - Sharing knowledge and concepts while pursuing professional certifications and continuous learning

---

## 📬 Stay Updated

Want to be notified about new posts? 

- 📧 [Subscribe via RSS](/feed.xml)
- 💼 [Follow on LinkedIn](https://www.linkedin.com/in/luigi-sambolino)
- 💻 [Star on GitHub](https://github.com/lsambolino)

---

## 💬 Engage With Content

Found something useful? Have questions or suggestions?

- Leave comments on blog posts (powered by GitHub Discussions)
- Share articles with your network
- Suggest topics you'd like to see covered

[Contact me](/contact) | [View projects](/projects) | [Home](/)
