# Task 5.3

## Linux

1. ### How many states could has a process in Linux?

* Linux has basically 5 process states.
* Running (R)
* Interruptible Sleep (S) 
* Uninterruptible Sleep (D)
* Stopped (T)
* Zombie (Z)  

2. ### How many states could has a process in Linux?


3. ### What is a proc file system?

* The proc filesystem (procfs) is a special filesystem in Unix-like operating systems that presents information about processes and other system information in a hierarchical file-like structure, providing a more convenient and standardized method for dynamically accessing process data held in the kernel than traditional tracing methods or direct access to kernel memory. 

4. ###  Print information about the processor

* 'lscpu' command prints CPU architecture
* '$ cat /proc/cpuinfo' also show cpu by viewing contents of the /proc/cpuinfo
*  $ cat /proc/cpuinfo | grep 'vendor' | uniq	    view vendor name
   $ cat /proc/cpuinfo | grep 'model name' | uniq   display model name
   $ cat /proc/cpuinfo | grep processor | wc -l	    count the number of processing units
   $ cat /proc/cpuinfo | grep 'core id'			    show individual cores

5. ### Use the ps command to get information about the process. The information should be as follows: the owner of the process, the arguments with which the process was launched for execution, the group owner of this process, etc. 

* 'ps'

6. ### How to define kernel processes and user processes?

* User-space processes have its own virtual address space.

* Kernel processes or threads do not have their own address space, they operate within kernel address space only.

7. ### Print the list of processes to the terminal. Briefly describe the statuses of the processes. What condition are they in, or can they be arriving in?

8. ### Display only the processes of a specific user.

9. ### What utilities can be used to analyze existing running tasks (by analyzing the help for the ps command)?

10. ### What information does top command display?

12. ### Display the processes of the specific user using the top command.

12. ### What interactive commands can be used to control the top command? Give a couple of examples.

13. ### Sort the contents of the processes window using various parameters (for example, the amount of processor time taken up, etc.)

14. ### Concept of priority, what commands are used to set priority?

15. ### Can I change the priority of a process using the top command? If so, how?

16. ### Examine the kill command. How to send with the kill command process control signal?  Give an example of commonly used signals.

17. ### Commands jobs, fg, bg, nohup. What are they for? Use the sleep, yes command to demonstrate the process control mechanism with fg, bg.