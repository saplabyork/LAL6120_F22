library(tidyverse)
remotes::install_github("joeystanley/joeysvowels", force = TRUE)
library(joeysvowels)
library(ggplot2)
library(tidyr)
library(dplyr)

data(darla)
ggplot(darla, aes(F2, F1, color = vowel)) + 
  geom_point() + 
  scale_x_reverse() + 
  scale_y_reverse()

data(coronals)
avg_trajs <- coronals %>%
  group_by(vowel, percent) %>%
  summarize(across(c(F1, F2), mean)) %>%
  print()
ggplot(avg_trajs, aes(F2, F1, color = vowel)) + 
  geom_path(aes(group = vowel), 
            arrow = arrow(angle = 20, length = unit(0.15, "in"), type = "closed")) + 
  scale_x_reverse() + 
  scale_y_reverse()
