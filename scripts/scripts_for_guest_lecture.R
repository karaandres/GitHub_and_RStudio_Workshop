#############################################
############# Configure GitHub ##############
#############################################
install.packages("usethis")
library(usethis)
use_git_config(user.name = "yourusername", user.email = "youremail@example.com")
create_github_token() # accept defaults, give name in Note field, click generate token
install.packages("gitcreds")
library(gitcreds) 
gitcreds_set() # select option 2 and enter PAT as the password


#############################################
### Import, summarize, and plot a dataset ###
#############################################
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
