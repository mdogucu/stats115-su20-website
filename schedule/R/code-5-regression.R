## Alicia Johnson, Miles Ott, Mine Dogucu

library(tidyverse)
library(rstanarm)
library(bayesplot)

# Original source: https://archive.ics.uci.edu/ml/datasets/Bike+Sharing+Dataset
bikes <- read_csv("lectures/bike_share.csv")

# Clean up & subset
set.seed(84735)
bikes <- bikes %>% 
  mutate(rides = riders_registered) %>% 
  select(-riders_casual, -riders_total, -riders_registered) %>% 
  filter(temp_feel < 87, temp_feel > 45) %>% 
  #sample_n(200) %>% 
  sample_n(500) %>% 
  arrange(date)

