# Task 2.2

## AWS Basics

##**Lightsail Instance**

1. Already register in AWS 

* ![](img/LS1.png)

2. Create Instance and make new SSH key for VM

* ![](img/LS2.png)

* ![](img/LS3.png)

* ![](img/LS4.png)

3. Connect to VM by aws web cli and mobaxterm

* ![](img/LS5.png)

* ![](img/LS6.png)

* ![](img/LS7.png)



##**EC2 Instance**
 
1. Create instance and create new ssh key.

* ![](img/EC1.png)

* ![](img/EC2.png)

* ![](img/EC3.png)

2. Connect to instance by aws web cli and mobaxterm

* ![](img/EC4.png)

* ![](img/EC5.png)

* ![](img/EC6.png)



##**Instance volumes**

1. Create and attach volume Disk_D

* ![](img/vol1.png)

* ![](img/vol2.png)

2. Format and mount a Disk_D. Create file index.html

* ![](img/vol3.png)

* ![](img/vol4.png)



##**Create instance from backup**

1. Create image from instance snapshot

* ![](img/bck1.png)

* ![](img/bck2.png)

* ![](img/bck3.png)

2. Detach/Attach volume Linux-vm1 -> Linux-backup

* ![](img/bck4.png)

* ![](img/bck5.png)

* ![](img/bck6.png)

* ![](img/bck7.png)

* ![](img/bck8.png)



##**Launch and configure a WordPress instance with Amazon Lightsail**

1. Create WP instance in Lightsail

* ![](img/wp1.png)

* ![](img/wp2.png)



##**S3 Bucket**

1. Create Bucket

* ![](img/bucket1.png)

* ![](img/bucket2.png)

2. Create user in IAM with and copy file to S3 bucket by aws cli

* ![](img/cli1.png)

* ![](img/cli2.png)

* ![](img/cli3.png)

* ![](img/cli4.png)

* ![](img/cli5.png)

* ![](img/cli6.png)



##**Create domain**

1. Explore the possibilities.

2. Also already created an instance for my needs with elastic IP and OpenVPN server.

* ![](img/vpn1.png)

* ![](img/vpn2.png)




##**Amazon ECS**

1. Create cluster and run demo app in ECS.

* ![](img/ecs1.png)

* ![](img/ecs2.png)

* ![](img/ecs3.png)

* ![](img/ecs4.png)

* ![](img/ecs5.png)



##**Static website Amazon S3**

* Already created and modified web-app for this task.
  Link to my repo https://github.com/OLG-MAN/testapp-cicd-aws

* Using Elastic Beanstalk (Python app), S3 bucket for zip files, and Github actions
  for ci/cd proccess (main.yaml file).

* All proccess going by this way
  Github commit -> GH actions ci/cd parts -> creating zip file from code and 
  copy to S3 bucket -> Create new version of EB and update from S3 bucket zip file.

* ![](img/cicd1.png)

* ![](img/cicd2.png)

* ![](img/cicd3.png)

* ![](img/cicd4.png)

* ![](img/cicd5.png)

* ![](img/cicd6.png)

* ![](img/cicd7.png)

* ![](img/cicd8.png)

* ![](img/cicd9.png)

* Site Link http://testdevapp-env.eba-mykqyihe.eu-central-1.elasticbeanstalk.com/

----------------
