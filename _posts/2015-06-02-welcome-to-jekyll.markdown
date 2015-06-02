---
layout: post
title: First blog entry
date: {}
categories: jekyll update
published: true
---

Loaded Jekyll into a docker image in order to initialize the repository and serve up files locally.

{% highlight shell %}
#!/bin/bash

REP=$1

if [ -z "$REP" ]; then
  echo "usage: $0 repository"
  exit 1
fi

echo repository=${REP}

docker run -d -p 4000:4000 -v /home/vagrant/repositories:/tmp/repositories jekyll bash -l -c "cd /tmp/repositories && if [ ! -d ${REP}/_site ]; then jekyll new ${REP}; fi && cd ${REP} && jekyll serve --host=0.0.0.0"

{% endhighlight %}
