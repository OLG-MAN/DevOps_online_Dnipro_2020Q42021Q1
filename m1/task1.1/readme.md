# Task 1
**Describe  working with GIT**
- Config and check my globals
 ![](images/001.png)
- Created repo on GitHub 
 ![](images/002.png)
- Clone repo to localhost
 ![](images/003.png)
- Make folders tree
 ![](images/004.png)
- Make branch develop
`git checkout -b develop`
 ![](images/005.png)
- Create index.html
- Make branch images
`git checkout -b images`
 ![](images/006.png)
- add images 
 ![](images/img001.png)
 ![](images/img002.png)
 ![](images/img003.png)
- change index.html
- Make branch styles
`git checkout -b styles`
- add style and change index.html (add styles.css)
    * {
        margin: auto;
        background-color: azure;
    }
 ![](images/007.png)
- go to develop branch
`git checkout develop`
- merge **styles** and **images** branches to **develop**
`git merge styles`
`git merge images`
 ![](images/007.png)
- go to main branch
`git checkout main`
- merge **develop** to **main** branch
`git merge develop`
------------
