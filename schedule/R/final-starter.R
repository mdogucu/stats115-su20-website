library(rattle)
library(tidyverse)
library(rstanarm)
library(bayesplot)
data(weatherAUS)

# Take a sub-sample of the data
set.seed(84735)
weather <- weatherAUS %>% 
  filter(Location == "Perth") %>% 
  na.omit() %>% 
  sample_n(1000) 

names(weather) <- tolower(names(weather))

weather <- weather %>% 
  select(date, raintomorrow, humidity9am, humidity3pm, raintoday) %>% 
  mutate(raintomorrow = case_when(raintomorrow=="Yes" ~ 1,
                                   raintomorrow=="No" ~ 0))
  

weather_train <- weather %>% 
  sample_frac(0.80)



weather_test <- weather %>% 
  anti_join(weather_train, by = "date")
