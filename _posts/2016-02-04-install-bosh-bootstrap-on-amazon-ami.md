---
layout: post
published: true
---


## bosh-bootstrap installation

Steps to install bosh-bootstrap on amazon linux ami:

- sudo yum groupinstall "Development Tools"
- sudo yum update ruby
- sudo yum install rubygems
- sudo yum install ruby-devel
- sudo gem update --system
- sudo yum install sqlite-devel
- sudo gem install rake
- sudo gem install bundler
- sudo gem install io-console

### Install Nokogiri XML
- sudo yum install -y libxml2 libxml2-devel libxslt libxslt-devel
- sudo gem install nokogiri

### install bosh-bootstrap
- sudo gem install bosh-bootstrap

### bosh-bootstrap first run

          [ec2-user@ip-10-10-0-233 my-bosh]$ bosh-bootstrap deploy
          1. AWS
          2. OpenStack
          3. vSphere
          Choose your infrastructure: 1
          Using provider AWS
          Access key: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
          Secret key: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
          1. *US East (Northern Virginia) Region (us-east-1)
          2. US West (Oregon) Region (us-west-2)
          3. US West (Northern California) Region (us-west-1)
          4. EU (Ireland) Region (eu-west-1)
          5. EU (Frankfurt) Region (eu-central-1)
          6. Asia Pacific (Singapore) Region (ap-southeast-1)
          7. Asia Pacific (Sydney) Region (ap-southeast-2)
          8. Asia Pacific (Tokyo) Region (ap-northeast-1)
          -------------
          9. South America (Sao Paulo) Region (sa-east-1)
          10. China (Beijing) Region (cn-north-1)
          Choose AWS region: 1
          
          Confirming: Using AWS EC2/us-east-1
          1. vpc-5e4e5f3c (172.31.0.0/16)
          2. CloudFoundry (10.10.0.0/16)
          3. vpc-ccc572a8 (172.16.0.0/16)
          4. vpc-448ac620 (10.0.0.0/16)
          5. EC2 only
          Choose a VPC: 2
          1. subnet-940c95a9 (10.0.1.0/24)
          2. bosh_rds1 (10.10.1.0/24)
          3. cf2 (10.10.80.0/20)
          4. subnet-e8a696c3 (172.16.0.0/24)
          5. services2 (10.10.96.0/20)
          6. cf_elb1 (10.10.2.0/24)
          7. subnet-90de88d6 (172.31.0.0/20)
          8. cf1 (10.10.16.0/20)
          9. services1 (10.10.32.0/20)
          10. cf_rds1 (10.10.3.0/24)
          11. subnet-7587872c (172.16.1.0/24)
          12. bosh1 (10.10.0.0/24)
          13. cf_elb2 (10.10.66.0/24)
          14. bosh2 (10.10.64.0/24)
          15. bosh_rds2 (10.10.65.0/24)
          16. subnet-19f5466f (10.0.0.0/24)
          17. services_rds2 (10.10.72.0/21)
          18. services_rds1 (10.10.8.0/21)
          19. cf_rds2 (10.10.67.0/24)
          Choose a subnet: 12
          
          Choose IP |10.10.0.4| 
          
          Confirming: Using address 10.10.0.4
          Created security group ssh-vpc-b21d5cd6 for the VPC
           -> opened ssh-vpc-b21d5cd6 ports TCP 22..22 from IP range 0.0.0.0/0
          Created security group dns-server-vpc-b21d5cd6 for the VPC
           -> opened dns-server-vpc-b21d5cd6 ports UDP 53..53 from IP range 0.0.0.0/0
          Created security group bosh-vpc-b21d5cd6 for the VPC
           -> opened bosh-vpc-b21d5cd6 ports TCP 4222..4222 from IP range 0.0.0.0/0
           -> opened bosh-vpc-b21d5cd6 ports TCP 6868..6868 from IP range 0.0.0.0/0
           -> opened bosh-vpc-b21d5cd6 ports TCP 25250..25250 from IP range 0.0.0.0/0
           -> opened bosh-vpc-b21d5cd6 ports TCP 25555..25555 from IP range 0.0.0.0/0
           -> opened bosh-vpc-b21d5cd6 ports TCP 25777..25777 from IP range 0.0.0.0/0
          Acquiring a key pair firstbosh... done
          
          Confirming: Using key pair firstbosh
          Determining stemcell image/file to use... curl -O 'https://bosh-jenkins-artifacts.s3.amazonaws.com/bosh-stemcell/aws/light-bosh-stemcell-3189-aws-xen-ubuntu-trusty-go_agent.tgz'
            % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                           Dload  Upload   Total   Spent    Left  Speed
          100 20317  100 20317    0     0   3595      0  0:00:05  0:00:05 --:--:--  4911
          /home/ec2-user/my-bosh/deployments/firstbosh/light-bosh-stemcell-3189-aws-xen-ubuntu-trusty-go_agent.tgz
          bosh micro deployment firstbosh
          WARNING! Your target has been changed to `https://10.10.0.4:25555'!
          Deployment set to '/home/ec2-user/my-bosh/deployments/firstbosh/micro_bosh.yml'
          bosh -n micro deploy --update-if-exists /home/ec2-user/my-bosh/deployments/firstbosh/light-bosh-stemcell-3189-aws-xen-ubuntu-trusty-go_agent.tgz
          
          Verifying stemcell...
          File exists and readable                                     OK
          Verifying tarball...
          Read tarball                                                 OK
          Manifest exists                                              OK
          Stemcell image file                                          OK
          Stemcell properties                                          OK
          
          Stemcell info
          -------------
          Name:    bosh-aws-xen-ubuntu-trusty-go_agent
          Version: 3189
          
            Started deploy micro bosh
            Started deploy micro bosh > Unpacking stemcell. Done (00:00:00)
            Started deploy micro bosh > Uploading stemcell. Done (00:00:09)
            Started deploy micro bosh > Creating VM from ami-3d9ab557 light. Done (00:00:31)
            Started deploy micro bosh > Waiting for the agent. Done (00:01:58)
            Started deploy micro bosh > Updating persistent disk
            Started deploy micro bosh > Create disk. Done (00:00:07)
            Started deploy micro bosh > Mount disk. Done (00:00:12)
               Done deploy micro bosh > Updating persistent disk
            Started deploy micro bosh > Stopping agent services. Done (00:00:06)
            Started deploy micro bosh > Applying micro BOSH spec. Done (00:00:43)
            Started deploy micro bosh > Starting agent services. Done (00:00:10)
            Started deploy micro bosh > Waiting for the director. Done (00:00:27)log writing failed. can't be called from trap context
          Deployed `firstbosh/micro_bosh.yml' to `https://10.10.0.4:25555', took 00:04:37 to complete
