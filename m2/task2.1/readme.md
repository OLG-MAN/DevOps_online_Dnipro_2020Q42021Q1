# Task 2.1
## Part 1
### **Most Popular Hypervisors.**

1. Type-1. Native Hypervisors.
* VMware ESX
* Citrix XenServer
* Microsoft Hyper-V
* Oracle VM Server for SPARC
* Oracle VM Server for x86
* Nutanix AHV

2. Type-2. Hosted Hypervisors.
* VirtualBox 
* VMware Workstation
* Microsoft Virtual PC
* QEMU 
* Parallels Desktop for Mac

### **Features of popular Hypervisors**

1. Citrix XenServer
* Multi-server management
* Dynamic Memory Control
* Live VM migration
* Site Recovery
* Host Failure Protection
* Active Directory Integration
* Heterogeneous Resource Pools
* Intellicache
* GPU Virtualization
* Nested Virtualization for Bromium Secure Platform

2. Microsoft Hyper-V
* Persistent memory support.
* Shielded VM updates.
* Simple Two-Node clusters.
* ReFS Deduplication.
* Storage Spaces Direct improvements.
* Windows Admin Center.
* Encrypted subnets.

3. Red Hat KVM
* Scalability.
* Overcommit resources.
* Disk I/O throttling.
* Hot plug of virtual resources.
* Low cost virtualization solution.
* Red Hat Enterprise Virtualization programming & API.
* Disaster Recovery support.
* Red Hat Satellite integration.

4. VMware vSphere
* It abstracts memory, processors, storage and other resources into multiple VMs.
* vCenter Server: Centralized management tool to configure, provision and manage virtual IT environments. 
* vSphere Client: vSphere 6.7 has the final version of Flash-based vSphere Web Client. 
* vSphere SDKs: Provides interfaces for third-party solutions to access vSphere.
* VM File System: A cluster file system for VMs.
* Virtual SMP: Enables a single VM to use multiple physical processors at a time.
* vMotion: Enables live migration with transaction integrity.
* Storage vMotion: Enables VM file migration from one place to other without service interruption.
* High Availability: If one server fails, VM is shifted to another server with spare capacity to enable business continuity.
* Distributed Resource Scheduler (DRS): Assigns and balances compute automatically across hardware resources available for VMs.
* Fault Tolerance: Generates copy of primary VM to ensure its continuous availability.
* Distributed Switch (VDS): Spans multiple ESXi hosts and enables considerable reduction of network maintenance activities and increases network capacity.
* Network & Storage I/O Control.
* Hot add CPU and RAM resources.

**Comparsion table of hypervisors**
* ![](img/Comparsion.png)

## Part 2

### **Work with VirtualBox**

1. VirtualBox already installed on my host
* ![](img/001.png)

2. Create VM1
* ![](img/002.png)

3. Install Ubuntu
* ![](img/003.png)

4. Make Clone VM
* ![](img/004.png)
* ![](img/005.png)

5. Make Group of VM's
* ![](img/006.png)

6. Make snapshots of VM1
* ![](img/007.png)

7. Export VM1 to .ova file.
* ![](img/008.png)
* ![](img/009.png)

-----------

### **Configuration of virtual machines**

1. Explored VM Settings.

2. Configure connect from host USB port to guest USB port.
* ![](img/101.png)
* ![](img/102.png)
* ![](img/103.png)

3. Configure Shared folder beetween host and guest.
* ![](img/104.png)
* ![](img/105.png)
* ![](img/106.png)
* ![](img/107.png)

-----------

4. Configure different network modes for VM1, VM2.

### **Connection Table**
* ![](img/table.png)

### **NAT mode connection.**
* ![](img/nat1.png)
* ![](img/nat2.png)
* ![](img/nat3.png)
* ![](img/nat4.png)

### **Bridged mode connection**
* ![](img/bridge1.png)
* ![](img/bridge2.png)
* ![](img/bridge3.png)
* ![](img/bridge4png)

### **Internal network connection**
* ![](img/intnet.png)
* ![](img/intnet1.png)
* ![](img/intnet2.png)
* ![](img/intnet3.png)
* ![](img/intnet4.png)

### **Host-only adapter connection**
* ![](img/host-adapter1.png)
* ![](img/host-adapter2.png)

-----------

## **VBoxManage**

1. list vms command
* ![](img/vbm1.png)

2. Showvminfo command
* ![](img/vbm2.png)

3. creatvm command
* ![](img/vbm3.png)

4. startvm command
* ![](img/vbm4.png)

5. modifyvm command
* ![](img/vbm5.png)

6. clonevm command
* ![](img/vbm6.png)

7. snapshot command
* ![](img/vbm7.png)

8. controlvm command
* ![](img/vbm8.png)

-----------

## Part 3

### **Vagrant**

1. Create folders
* ![](img/vag1.png)

2. Initialized the environment with the default Vagrant box
* ![](img/vag2.png)

3. Start default vagrant vm 
* ![](img/vag2.1.png)

4. Connect to vm by ssh
* ![](img/vag3.png)
* ![](img/vag4.png)

5. Check Date
* ![](img/vag5.png)

6. Stop and delete VM
* ![](img/vag6.png)

7. Create own vagrant box
* ![](img/vag7.png)

-----------























