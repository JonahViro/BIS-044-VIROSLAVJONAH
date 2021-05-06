library("tidyverse")
library("dplyr")
library("ggplot2")
results<- read.csv("most-recent-cohorts-all-data-elements-1")

results <- results %>%
  Select(HIGHDEG,STABBR) %>% mutate(HIGHDEG = factor(HIGHDEG, 0:5))
ggplot(results,aes(HIGHDEG)) +
  geom_bar() +
  facet_wrap(vars(STABBR)) +
  scale_x_discrete('Highest Degree', drop = FALSE) +
  ylab('Frequency') + 
  ggtitle('Highest Degree by State')

