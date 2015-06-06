---
published: true
layout: post
---


## Trouble with AWS S3 Policy

As a newbie to AWS, having difficulty determining the appropriate policy for [blog.maline.me](http://blog.maline.me "My blog")

This policy allows anonymous read access to the bucket.

{% highlight javascript %}
{
	"Version": "2012-10-17",
	"Id": "Policy1433446638869",
	"Statement": [
		{
			"Sid": "Stmt1433446627561",
			"Effect": "Allow",
			"Principal": "*",
			"Action": "s3:GetObject",
			"Resource": "arn:aws:s3:::blog.maline.me/*"
		}
	]
}
{% endhighlight %}

But trying to add an additional policy to allow circleci to deploy the jekyll website keeps failing.
