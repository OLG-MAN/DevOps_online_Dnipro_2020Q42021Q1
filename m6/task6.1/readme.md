# Task 6.1

## Network 
### Make Task with AWS VPC 
### Create model for VPC and instances.

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

### 3. Create NAT gateway for Private-subnet(nat-internal).

![](img/vpc14.png)


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

![](img/vpc24.png)

![](img/vpc25.png)

![](img/vpc26.png)

![](img/vpc27.png)

![](img/vpc28.png)

![](img/vpc29.png)

### 7. Checking and testing network.

* Connecting to host(bastion) in Public-subnet. Check ping, IP.

![](img/vpc30.png)

![](img/vpc31.png)

![](img/vpc32.png)

* Copy key.pem and connect to host in Private-subnet.

![](img/vpc33.png)

![](img/vpc34.png)

![](img/vpc35.png)

* Check ping and IP through NAT in Private-subnet host.

![](img/vpc36.png)

![](img/vpc39.png)

* Connecting to host in Intenal-subnet. Check ping, ip.

![](img/vpc37.png)

![](img/vpc38.png)

---------------------------------
### QUESTIONS

### 1. Determine, which resource has an IP address 8.8.8.8. 

* It's Google DNS servers

### 2. Determine, which IP address belongs to resource epam.com

![](img/vpc40.png)

### 3. Determine the default gateway for your HOST and display routing table.

* For AWS VPC i think this IGW. 54.93.0.221

![](img/vpc41.png)

![](img/vpc50.png)

### 4. Trace the route to google.com

![](img/vpc42.png)

----------------------------------
