# Task 5.2

## Linux

1. ### Analize files /etc/passwd and /etc/group

* There is lines of processes , pseudo-users and regular users in /etc/passwd. 

* Every line have 
username: pswd: uid: gid: uid comments: directory: shell.

* ![](img/sys1.png)

* ![](img/sys2.png)

* ![](img/sys5.png)

* ![](img/sys9.png)

* Users on screenshots is 'root', 'olg-man' and 'user202'.

* ![](img/sys3.png)

* ![](img/sys4.png)

* ![](img/sys6.png)

* Pseudo-users is like 'daemon', 'bin', 'nobody' and others.

* ![](img/sys7.png)

* ![](img/sys8.png)

* /etc/group containes from 'group_name', 'password' and 'group_id'.

* ![](img/sys12.png)

* ![](img/sys13.png)

* ![](img/sys14.png)

2. ### What are the uid ranges? What is UID? How to define it?

* UID from 1 to 999 it's system processes, daemons, pseudo-users etc. And from 1000+ it's regular users in system.

3. ### What is GID? How to define it?

* This is unique Group ID number in system. You can define both in  /etc/passwd and /etc/group. 

* ![](img/sys15.png)

* ![](img/sys16.png)

* ![](img/sys17.png)

4. ### How to determine belonging of user to the specific group? 

* We can define it in /etc/passwd

* ![](img/sys10.png)

* ![](img/sys11.png)

5. ### What are the commands for adding a user to the system? What are the basic parameters required to create a user?

* Basic commands to create a user it's 'useradd -m user' after change password 'passwd user' and add to some groups if need 'usermod -aG Group user'

6. ### How do I change the name (account name) of an existing user?

* We can change it by command 'usermod -l new_user_name old_user_name'

7. ### What is skell_dir? What is its structure?

* It's "skeleton" or "template" for initiate home directiry for new user. 

* Also we can change default location from /etc/skel to some other in file /etc/defualt/useradd

* ![](img/sys18.png)

* ![](img/sys19.png)

8. ### How to remove a user from the system (including his mailbox)?

* To delete user his home dir and mail we can you command 'userdel -r username'

9. ### What commands and keys should be used to lock and unlock a user account?

* We can use the command 'passwd -l username' or 'usermod -L username' to lock the user. And can unlock him by this commands 'passwd -u username' or 'usermod -U username'

10. ### How to remove a user's password and provide him with a password-free login for subsequent password change?

* If user has sudo privilegies, enable 'NOPASSWD' option in 'sudo visudo'. After use command 'sudo paswd -d `whoami`' It's must work:)

* ![](img/sys20.png)

* ![](img/sys21.png)

11. ### Display the extended format of information about the directory, tell about the information columns displayed on the terminal.

* We can use command 'll -h' extend long format with "human" file sizes. In description(inode) of a file we can find - file type, access rigths, owner information, file size, time stamp of creation.

* ![](img/sys22.png)

12. ### What access rights exist and for whom (i. e., describe the main roles)? Briefly describe the acronym for access rights.

* After first character of file type '-, d, b, c, l, p, s', we can define access rights representation 'rwxrwxrwx'. First triplet its access rights for user(owner, u) next triplet is group owns(g), last is 'others' access rights(o). We can change rights for file or directory by the commands like 'chmod g-rw myfile.txt', 'chmod o=rw myfile.txt'. Also wу can change mod by numeric commands 'chmod 741 myfile.txt' where r=4, w=2, x=1, and we can sum numbers to get need rigths for each access group (user,group,others). 

13. ### What is the sequence of defining the relationship between the file and the user?

* Write answer in previous question.

14. ### What commands are used to change the owner of a file (directory), as well as the mode of access to the file? Give examples, demonstrate on the terminal.

* We can use 'chown' command for changing owner of file or dir.

* ![](img/sys23.png)

* ![](img/sys24.png)

* ![](img/sys25.png)

15. ### What is an example of octal representation of access rights? Describe the umask command.

* This notation consists of at least three digits. Each of the three rightmost digits represents a different component of the permissions: owner, group, and others. Where where r=4, w=2, x=1 (comparsion with symb notation). Also have or no have Sticky bit value 0 or 1. Example 0755.

16. ### Give definitions of sticky bits and mechanism of identifier substitution. Give an example of files and directories with these attributes.

* A Sticky bit is a permission bit that is set on a file or a directory that lets only the owner of the file/directory or the root user to delete or rename the file. No other user is given privileges to delete the file created by some other user.

* ![](img/sys25.png)

* ![](img/sys27.png)

* ![](img/sys26.png)

17. ### What file attributes should be present in the command script?

File attributes that enable further customization of allowable file operations. Example of command '# chattr +i /path/file'.
Available attributes are:
a: append only
c: compressed
d: no dump
e: extent format
i: immutable
j: data journalling
s: secure deletion
t: no tail-merging
u: undeletable
A: no atime updates
C: no copy on write
D: synchronous directory updates
S: synchronous updates
T: top of directory hierarchy

-----------------------------------------------------
