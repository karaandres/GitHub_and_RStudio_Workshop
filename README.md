# Ling_Lab_Group_GitHub_Training

Today we will learn the basics of using GitHub for version control and project management. Much of the content for this tutorial has been adapted from Nina Therkildsen's [Collaborative and Reproducible Data Science in R Course](https://nt246.github.io/NTRES6940-data-science/index.html).


### Objectives
- Learn when and why GitHub is useful
- Explore creating your own GitHub repo
- Communicate between RStudio with GitHub
- Run through an example workflow


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
- Name the repository `my_first_repo` and add a brief description: "This is where I learned to create a repo."
- Set it to public, add a README file, and click “Create repository”


### Navigating GitHub
- Click `Add File` --> `Create new file`
- Name the file `markdown_file.md`
- Add a sentence here: "I'm going to come back and delete this sentence."
- Click `Commit new file`
- Click the pen icon to edit
- Delete the sentence you added the first time
- Add a new sentence: "This is my new sentence."
- If you have extra time, play around with markdown text formatting. Toggle between `Preview` and `Edit file`
- Commit the changes


### Explore commit history in your repo
GitHub uses the program Git to keep track of the project’s history. The actual changes made to a file are called a diff.
- View the commit history of your repo by clicking the clock logo on your repo home page
- Click on a specific commit to view the diff
- You can view the history of a specific file by clicking on the file and going to `History`
- You can view the repository at the time a commit was made using the <> button


### Clone a GitHub repository to your computer via RStudio
- In RStudio, start a new Project: File > New Project > Version Control > Git 
- In “Repository URL”, paste the URL of your new GitHub repository (click the green “Code” button, then copy the web address)
- Keep the default directory name and take note of where it is going to become a folder on your computer (I keep all of mine in a high-level folder named Github)
- Click Create Project
- The repo should show up in RStudio as well as in the folder you specified
- Notice the Git tab in the top right panel


### Make changes in RStudio (local) and push them to GitHub (remote)
- From RStudio, modify the markdown_file.md file: add the line “This is a new line from RStudio”
- Save your changes -- notice this file now shows up in your Git tab with a blue M ("Modified")
- We can sync a single file or a group of files to GitHub when we are ready to save a snapshot in time of the progress we’ve made. This might be after a big part of the analysis is completed or when you’re done working for the day. Syncing local changes to GitHub.com involves 4 steps: Pull, Stage, Commit, Push
- Click the Commit button. Click on your markdown_file.md to preview the diff
1. “Pull” from GitHub.com to make sure that the local copy of our repository has the most up-to-date version of the files that is available online
2. "Stage" each file by clicking the box next to it
3. "Commit" your changes by writing a “commit message” to indicate the changes you've made. For now, this might be "modified markdown_file.md from RStudio". Press Commit. Close the window that pops up and notice the message in the commit window: "Your branch is ahead of origin/master by 1 commit."
4. "Push" the changes to GitHub by hitting the Push button. View your changes in the commit history on GitHub


### Example workflow 
Go back to RStudio and see how we set up well-organized projects and workflows for our data analyses. Your GitHub repository is now also an RStudio Project (.Rproj). This means that RStudio has saved this additional file to store specific settings for this project. This is where we keep all of our data, code, figures, notes, etc.

1. Create folders for data, scripts, and figures 
- In the bottom right Files pane click the `New Folder` button. Add a folders labeled “data”, "scripts", and “figures”

2. Add raw data files to data folder
- Open Excel and create a dummy data file with and x column and a y column with 10 values in each 
- Name the file `dummy_dataset.csv` and save into the ‘data’ subfolder of your R project
- Now go back to RStudio: We can click on the data folder in the Files tab and now see this new file

3. Create a new script that creates and saves a figure to the figures folder
- Start a new R script and create a simple figure
```
dat <- read.csv("data/dummy_dataset.csv", header = TRUE)
jpeg(file = "figures/plot1.jpeg")
plot(dat$x, dat$y)
dev.off()
```
- Save the script as "plot_script.R" in the `scripts` folder

4. Sync these changes to GitHub. Remember: pull, stage, commit, push


### Additional readings/resources
- [Happy Git and GitHub for the useR](https://happygitwithr.com/index.html)
- [GitHub for project management](https://openscapes.github.io/series/core-lessons/github/github-issues.html)
- [Git and GitHub for Beginners (YouTube)](https://www.youtube.com/watch?v=RGOj5yH7evk)
- [Troubleshooting](https://happygitwithr.com/troubleshooting.html)
