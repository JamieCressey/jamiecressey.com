---
layout: post
title:  "Adding Disqus to a Jekyll blog"
date:   2016-02-27 14:15:24 +0000
tags:
- disqus
- jekyll
---

Creating my new blog couldn't be easier, and probably warrants a post of its own, however here I will explain how I easily added [Disqus](https://disqus.com/) comments to all posts on JamieCressey.com

Disqus make this really simple and provide a "Universal Code" snippet you can add to all pages you want comments on, in my case this is all posts.

To make this more flexible for future changes I decided to add the code within an if statement and place it just before the closing `</article>` tag within my `_layouts/post.html` file:

{% raw %}
~~~
{% if site.disqus %}
<div id="disqus_thread"></div>
<script>
  /**
   *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
   *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
   */
  var disqus_config = function () {
      this.page.url = "{{ page.url | prepend: site.url }}";  // Replace PAGE_URL with your page's canonical URL variable
      this.page.identifier = "{{ page.title }}"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
  };
  (function() {  // DON'T EDIT BELOW THIS LINE
      var d = document, s = d.createElement('script');

      s.src = '//{{ site.disqus }}.disqus.com/embed.js';

      s.setAttribute('data-timestamp', +new Date());
      (d.head || d.body).appendChild(s);
  })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
{% endif %}
~~~
{: .language-html}
{% endraw %}

To activate comments, all I then needed to do was set `disqus` to my username within `_config.yml`:

    disqus: jamiecressey

Voila!
