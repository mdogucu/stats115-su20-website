# Install the packages needed by this course
lapply(c('tidyverse', 'openintro', 'fivethirtyeight', 'titanic', 
         'nycflights13'), function(pkg) {if (system.file(package = pkg) == '') 
           install.packages(pkg)
})



library(openintro)
library(tidyverse)

ggplot(births) +
  aes(x = smoke, y = weight) +
  geom_boxplot() +
  labs(title = "Mine Dogucu")
  
