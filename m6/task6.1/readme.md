# Task 6.1

## Network 
### Make Task with AWS VPC 
### Using this model for VPC and instances

![](img/VPC1010.png)

### 1. Creating VPC and Intenet gateway for VPC.

![](img/vpc1.png)

![](img/vpc2.png)

![](img/vpc3.png)

![](img/vpc4.png)
 
### 2. Creating 3 Subnets Public, Private(nat-internal), Internal(internal). Auto-assign public IP for Public subnet.

![](img/vpc5.png)

![](img/vpc6.png)

![](img/vpc7.png)

![](img/vpc8.png)

![](img/vpc9.png)

![](img/vpc10.png)

### 3. Create NAT gateway for Private(nat-internal) Subnet.

![](img/vpc14.png)

![](img/vpc15.png)

### 4. Edit and assossiate route tables for Public, Private(nat-iternal), Internal(internal) subnets.

![](img/vpc11.png)

![](img/vpc12.png)

![](img/vpc13.png)

![](img/vpc17.png)

![](img/vpc18.png)

![](img/vpc19.png)


### 5. Create Seccurity group for instances in VPC. 

![](img/vpc20.png)

![](img/vpc21.png)

### 6. Create Host(Bastion) in 'public' subnet and 2 instances in subnets 'nat-internal' and 'internnal'. Add created before sec group and pem key for all instances.

![](img/vpc22.png)

![](img/vpc23.png)

![](img/vpc241.png)

![](img/vpc25.png)

![](img/vpc26.png)

![](img/vpc27.png)

![](img/vpc28png)

![](img/vpc29png)

### 7. Checking and testing network.


