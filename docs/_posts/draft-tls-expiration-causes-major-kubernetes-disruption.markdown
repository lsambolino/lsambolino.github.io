---
layout: post
title:  "Kubernetes TLS Expiration: Hidden time-bomb causing massive disruption"
date:   2024-09-10 19:30:12 +0200
categories: kubernetes
---
Picture this: a routine day in our tech operations suddenly turns into a high-stakes race against time. Our development team is in the middle of crucial deployments when they hit a wall—an unexpected service interruption that threatens to derail their workflow. What follows is a journey filled with troubleshooting, teamwork, and a few surprising revelations.

The Unexpected Call
It all started with an urgent call from our development team. They were facing a major disruption in their deployments, and it was clear that something had gone wrong in our pre-production (staging) Kubernetes clusters. As the initial confusion settled, we knew we had to dive deep into the problem to get to the bottom of it.


Unveiling the Culprits
1. The Expired Certificates

Our first clue came from an unexpected source: expired TLS certificates. In the world of Kubernetes, these certificates are the unsung heroes of secure communication. When they expire, the whole system's trust network falters. We quickly realized that this was not just a minor hiccup but a significant roadblock.

First, we sorted to 'kubeadm certs check-expiration' command, the output was something along the lines:

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





2. The Web of Dependencies

As we peeled back the layers of the problem, we discovered a tangled web of inter-service dependencies. Kubernetes services rely on each other in intricate ways, and understanding these connections was crucial. It felt like unraveling a complex puzzle, where each piece had to fit perfectly to restore order.

3. The Cluttered Configuration

Amidst the chaos, we also stumbled upon the apiserver YAML configuration, which was a mess of outdated and unnecessary lines. It was like finding clutter in a once-organized workspace—a distraction that needed to be cleared away to see the problem clearly.

The Fix: A Step-by-Step Triumph
1. Renewing the Certificates

With the root causes identified, we set to work on renewing the expired certificates. It was a meticulous process, ensuring that the new certificates were correctly issued and integrated into the cluster. Watching the certificates come back to life felt like watching a crucial piece of machinery start up again.

2. Tidying Up the Configuration

Next, we tackled the cluttered apiserver YAML file. We carefully stripped away the obsolete configurations, simplifying and streamlining the setup. It was a refreshing change—like clearing out a junk drawer and finding everything you need right where it belongs.

3. Testing and Reassurance

With the changes in place, we ran a series of tests to ensure everything was functioning smoothly. Each successful test was a small victory, confirming that we had restored normal operations and fixed the interruptions.

Reflecting on the Journey
This incident was a powerful reminder of the importance of proactive certificate management and understanding the intricate dependencies within a Kubernetes cluster. It was a challenging experience, but one that ultimately strengthened our approach and processes.

As we move forward, we’ll continue to share our journey and insights, refining our practices to prevent future disruptions. Stay tuned for more updates and lessons learned from our ongoing adventures in the world of Kubernetes.























You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
