# Ling_Lab_Group_GitHub_Training

Today we will learn the basics of using GitHub for version control and project management. Much of the content for this tutorial has been adapted from Nina Therkildsen's [Collaborative and Reproducible Data Science in R Course](https://nt246.github.io/NTRES6940-data-science/index.html).

### Objectives
- Learn when and why GitHub is useful
- Run through an example workflow
- Explore creating your own GitHub repo
- Communicate between RStudio with GitHub

### Let's get set up
 - Register a GitHub account (see instructions [here](https://happygitwithr.com/github-acct.html))
 - Install Git (see instructions [here](https://happygitwithr.com/install-git.html))
 - Install RStudio (see instructions [here](https://happygitwithr.com/install-r-rstudio.html))

### What is Git/GitHub and why should we use them?
Git is a version control system designed to track changes in any set of files. GitHub is the web platform that hosts your Git-versioned files/projects. You can not only store your own files here, but you can directly interact with other people's files as well. Although originally created by developers and programmers collaborating on big projects, it is now widely used in the scientific community for creating/sharing code, collaborating on research projects, and managing the version control for files related to a research project. It's a bit like DropBox or Google Drive, but with much better functionality for working with code and better version control.  

We keep our projects organized in **repositories** (or repos for short), which are the folders that contain a set of files. Here are examples of a few of my repos:

- [Data files, scripts, and figures from a recent paper](https://github.com/karaandres/Oneida_metabarcoding)
- [General workflow example](https://github.com/karaandres/metabarcoding_workflow)
- [Tutorial that I've given on creating maps in R](https://github.com/karaandres/making_maps_in_R)

I've made these repos open to the public; any researcher can view my code and, if they wish, clone it into their own GitHub as a starting point for their own projects. 

### Create your own GitHub repo
- Go to https://github.com and (if you haven't done so already) register an account or log in
- By "Recent Repositories" click "New" or alternatively, by "Start a new repository" click "Create a new repository"
- Name the repository (my_first_repo) and add a brief description ("This is where I learned to create a repo.")
- Set it to public, add a README file, and click “Create repository”

### Navigating GitHub
- Click `Add File` --> `Create new file`
- Name the file `markdown_formatting.md`
- Add a sentence here: "I'm going to come back and delete this sentence."
- Click `Commit new file`
- Click the pen to edit
- Delete the sentence you added the first time
- Add a new sentence: "This is my new sentence."
- If you have extra time, play around with markdown text formatting. Toggle between `Preview` and `Edit file`
- Commit the changes

### Explore commit history in your repo
GitHub uses the program Git to keep track of the project’s history. The actual changes made to a file are called a diff.
- View the commit history of your repo by clicking the clock logo on your repo home page
- Click on a specific commit to view the diff
-  Alternatively, you can view the history of a specific file by clicking on the file and going to `History`

### Interfacing RStudio (local) and GitHub (remote)
Syncing your local changes to GitHub.com involves 4 steps:
 - Pull
 - Stage
 - Commit
 - Push

### Additional readings/resources
- [Happy Git and GitHub for the useR](https://happygitwithr.com/index.html)
- [GitHub for project management](https://openscapes.github.io/series/core-lessons/github/github-issues.html)
- [Git and GitHub for Beginners (YouTube)](https://www.youtube.com/watch?v=RGOj5yH7evk)
- [Troubleshooting](https://happygitwithr.com/troubleshooting.html)
