# Task 8.1

## Jenkins CI/CD

### 1. Already created instance with Jenkins and Configure it. And create and configure deploy host. Install Apache, ssh, git.

![](img/jen1.png)

![](img/jen2.png)

![](img/jen3.png)

### 3. Configure "over SSH plugin" credentials. Add deploy host.

![](img/jen4.png)

### 4. Configure project build. Add GitHub project. Use Github webhook for Jenkins build. Add ssh server for file copy.

![](img/jen5.png)

![](img/jen6.png)

![](img/jen7.png)

![](img/jen8.png)

### 3. Check already deploy web page on deploy host. Copy Github repo to localhost for editing.  

![](img/jen9.png)

![](img/jen10.png)

![](img/jen11.png)

### 4. Editing webpage, change color in webpage blocks. Check on localhost.

![](img/jen12.png)

![](img/jen13.png)

### 5. Push commit. Build started and successfully deployed on deploy host. Also have a small test in Jenkins build to check that word "EPAM" use two times in cv.

![](img/jen14.png)

![](img/jen15.png)

![](img/jen16.png)

![](img/jen17.png)

![](img/jen18.png)

### P.S. This web-page(content) I'm will be not using in my final project, and a Jenkins pipeline would be different too. In the final project, I want to use Jenkins deploy to Kubernetes (now continuing learning this).

----------------------------------