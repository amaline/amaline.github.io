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

But trying to add an additional policy to allow circleci to deploy the jekyll website keeps failing.  Finally succeeded by after reading the instructions in s3_website documentation [here](https://github.com/laurilehmijoki/s3_website/blob/master/additional-docs/setting-up-aws-credentials.md)

## Solved

The key that I was missing was to have the policy apply to the website resource in addition to the / * resource. 

Would like to limit the Actions to something less than s3:*, but this works for now.

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
		},
		{
			"Sid": "Stmt1433600732119",
			"Action": [
				"s3:*"
			],
			"Effect": "Allow",
			"Resource": [
				"arn:aws:s3:::blog.maline.me/*",
				"arn:aws:s3:::blog.maline.me"
			],
			"Principal": {
				"AWS": [
					"arn:aws:iam::022218916186:user/BLOG.MALINE.ME-S3-ACCESS"
				]
			}
		}
	]
}
{% endhighlight %}
