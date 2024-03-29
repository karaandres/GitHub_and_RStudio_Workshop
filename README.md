# GitHub & RStudio: A Workflow for Collaborative Data Science


Today we will learn the basics of using GitHub for version control and project management. Much of the content for this tutorial has been adapted from Nina Therkildsen's [Collaborative and Reproducible Data Science in R Course](https://nt246.github.io/NTRES6940-data-science/index.html).


### Objectives
- Learn when and why GitHub is useful
- Explore creating your own GitHub repo
- Learn to communicate between RStudio with GitHub
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
- Click on the file and click the pen icon to edit
- Delete the sentence you added the first time
- Add a new sentence: "This is my new sentence."
- If you have extra time, play around with [markdown text formatting](https://www.markdownguide.org/cheat-sheet/). Toggle between `Preview` and `Edit file`
- Commit the changes


### Explore commit history in your repo
GitHub uses the program Git to keep track of the project’s history. The actual changes made to a file are called a diff.
- View the commit history of your entire repo by clicking the clock logo on your repo home page
- Click on a specific commit to view the diff
- You can view the history of a specific file by clicking on the file and going to `History`
- You can view the repository at the time a commit was made using the <> button


### Configure Git
 To connect the Git program installed on your computer with your GitHub account, you'll need to configuge Git (you should only have to do this once per computer). In R Studio:
 ```
 install.packages("usethis")
 library(usethis)
 use_git_config(user.name = "yourusername", user.email = "youremail@example.com")
```

Git can communicate with a remote server using one of two protocols, SSH or HTTPS, which requires a Personal Access Token (PAT), an alternative to using a username and password for authentication to GitHub. To create a PAT:
- Run `create_github_token()` in RStudio and use the selected defaults
- Give the token a descriptive name in the `Note` field and click "Generate Token". Store the PAT somewhere safe!

Now you just need to put your PAT into the Git credentials. You can do this in RStudio:
- Enter commands `library(gitcreds)` and `gitcreds_set()`, then select option 2 to update the credentials
- Enter the PAT as the password 


### Clone a GitHub repository to your computer via RStudio
- In RStudio, start a new Project: File > New Project > Version Control > Git 
- In “Repository URL”, paste the URL of your new GitHub repository (click the green “Code” button, then copy the https web address)
- Keep the default directory name and take note of where it is going to become a folder on your computer (I keep all of mine in a high-level folder named Github)
- Select ‘Open in new window’ and Click Create Project
- The full repo should show up in RStudio as well as in the folder you specified
- Notice the Git tab in the top right panel
- The working directory will automatically be set to this folder whenever you work on this project. All of the repo files are contained in the .Rproj file you just created


### Make changes in RStudio (local) and push them to GitHub (remote)
- In RStudio: click on the ‘Files’ pane and open the markdown_file.md file
- Add the line “This is a new line from RStudio.”
- Save your changes -- notice this file now shows up in your Git tab with a blue M ("Modified")
- We can sync a single file or a group of files to GitHub when we are ready to save a snapshot in time of the progress we’ve made. This might be after a big part of the analysis is completed or when you’re done working for the day. Syncing local changes to GitHub.com involves 4 steps: Pull, Stage, Commit, Push
- Click the Commit button. Click on your markdown_file.md to preview the diff
1. “Pull” from GitHub.com to make sure that the local copy of our repository has the most up-to-date version of the files that is available online
2. "Stage" each file you want to sync by clicking the box next to it
3. "Commit" your changes by writing a “commit message” to indicate the changes you've made. For now, this might be "modified markdown_file.md from RStudio". Press Commit. Close the window that pops up and notice the message in the commit window: "Your branch is ahead of origin/master by 1 commit."
4. "Push" the changes to GitHub by hitting the Push button. View your changes in the commit history on GitHub


### Example workflow 
Go back to RStudio and see how we set up well-organized projects and workflows for our data analyses. Your GitHub repository is now also an RStudio Project (.Rproj). This means that RStudio has saved this additional file to store specific settings for this project. This is where we keep all of our data, code, figures, notes, etc.

1. Create folders for data, scripts, and figures 
- In the bottom right Files pane in RStudio click the `New Folder` button. Add folders labeled “data”, "scripts", and “figures”

2. Add raw data files to data folder
- On your computer, save the file [HTL-MAR-FiddlerCrabBodySize.csv](data/HTL-MAR-FiddlerCrabBodySize.csv) into the ‘data’ subfolder of your R project 
- Now go back to RStudio: We can click on the data folder in the Files tab and now see this new file

Data citation: Johnson, D. 2019. Fiddler crab body size in salt marshes from Florida to Massachusetts, USA at PIE and VCR LTER and NOAA NERR sites during summer 2016. ver 1. Environmental Data Initiative. https://doi.org/10.6073/pasta/4c27d2e778d3325d3830a5142e3839bb

3. Create a new script to import, summarize, and plot a dataset
- Start a new R script: File --> New File --> R Script

```
install.packages(c("dplyr", "ggplot2"))
library(dplyr)
library(ggplot2)

pie_crab <- read.csv("data/HTL-MAR-FiddlerCrabBodySize.csv")

crab_stats <- pie_crab %>% 
  group_by(Latitude, Site) %>% 
  summarize(n = n(), 
            mean_mm = mean(carapace_width),
            min_mm = min(carapace_width),
            max_mm = max(carapace_width),
            sd_mm = sd(carapace_width),
            median_mm = median(carapace_width))
crab_stats
write.table(crab_stats, file="data/crab_stats.csv")

crab_plot <- pie_crab %>%
  ggplot(aes(y=Latitude)) +
  geom_boxplot(aes(carapace_width, group=Latitude, color=Latitude)) +
  xlab("Size (mm)") +
  theme_bw() +
  theme(legend.position = "none")
ggsave("figures/body_size_latitude.pdf", plot = crab_plot)

```
- Save the script as "crab_script.R" in the `scripts` folder

4. View these changes on your local computer
- Navigate to the project folder and see the files you created
- You should see a new figure, summary table, and script

5. Sync these new files to GitHub. Remember the 4 steps: 
- Pull, stage, commit, push
- You can just stage and commit the newly-created script, figure, and summary dataset

6. Refresh your repo in your browser and see the changes you	made on your local computer reflected on your GitHub repo 


### Additional readings/resources
- [Happy Git and GitHub for the useR](https://happygitwithr.com/index.html)
- [GitHub for project management](https://openscapes.github.io/series/core-lessons/github/github-issues.html)
- [Git and GitHub for Beginners (YouTube)](https://www.youtube.com/watch?v=RGOj5yH7evk)
- [Troubleshooting](https://happygitwithr.com/troubleshooting.html)
