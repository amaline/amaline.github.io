---
layout: post
published: false
---

## bosh-bootstrap installation

Steps to install bosh-bootstrap on amazon linux ami:

- sudo yum groupinstall "Development Tools"
- sudo yum update ruby
- sudo yum install rubygems
- sudo yum install ruby-devel
- sudo gem update --system
- sudo yum install sqlite-devel

### Install Nokogiri XML
- sudo yum install -y libxml2 libxml2-devel libxslt libxslt-devel
- sudo gem install nokogiri

### install bosh-bootstrap
- sudo gem install bosh-bootstrap


