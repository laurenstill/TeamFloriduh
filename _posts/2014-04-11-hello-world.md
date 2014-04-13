---
layout: post

title: Hello World!
subtitle: "What's brewing... "
cover_image: blog-cover.jpg

excerpt: "Something about that start of TeamFloriduh and the unique problems, and what the other 49 can learn. Or something"

author:
  name: Lauren Still
  twitter: laurencstill
  gplus: +LaurenStill 
  bio: Co-founder
  image: ks.png
---

Starting to put together team branding material, and the backbone for our app packaging.  More to come.  Keeping this here for a reminder for later... 

{% highlight yaml %}
layout: post

title: Hello World!
subtitle: "What's brewing..."

# Setup post cover image in /images/
cover_image: blog-cover.jpg

excerpt: "Something about that start of TeamFloriduh and the unique problems, and what the other 49 can learn. Or something"


# Author details, including Google Plus authorship
author:
  name: Lauren Still
  twitter: laurencstill
  gplus: +LaurenStill 
  bio: Co-founder
  image: ks.png
  
# Keep it as draft, not published in index.html or feed.xml
draft: false
{% endhighlight %}

#### Configurable & Code Snipped Highlighting

/assets/stylesheets/main.scss:
{% highlight scss %}

/* Bodytext font */
$font: "Droid Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;

/* Font for headings */
$fontheadings: "Droid Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;

/* Text colors */
$text: #21272d;
$textmuted: #848484;
$accent: #2077b2;    
{% endhighlight %}

config.yml:
{% highlight yaml %}
inc:
  # Blog Information
  title:        "Hello World!"
  subtitle:     "What's brewing..."
  cover_image:  blog-cover.jpg
  
  # Company information
  company:      TeamFloriduh
  url:          http://teamfloriduh.com
  facebook:     laurencstill
  twitter:      laurencstill
  about_link:   https://teamfloriduh.com
  
  # Product Information
  product_link: http://teamfloriduh.com/app
  tagline:      "Here's my number, call me maybe.."
  
  # Comments
  disqus:
    # Eg. "exampleblog" Set to false to disable comments
    shortname:  false
  
  
  # Sharing settings
  sharing:
    twitter:    false
    facebook:   false
    gplus:      false
    hn:         false
    
  
 # Analytics     
  analytics:
    google: 
      # eg. 'UA-123-12'
      id:       false    
{% endhighlight %}

**Zoomable images**
<div class="full zoomable"><img src="/images/incorporated.jpg"></div>

**Awesome quotes**
> “Effective companies tend to communicate more, their people are curious and they have opinions”

Stay tuned for updates.