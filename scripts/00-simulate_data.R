#### Preamble ####
# Purpose: Simulates Shelter Residents' total decedents Data
# Author: Haobo Ren
# Date: 23 September 2024
# Contact: haobo.ren@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####

#set the seed of the simulation
set.seed(304)

#Simulate the data, from 2007 to 2024.Use normal distribution to simulated the 
#total decedents, with mean = 50, sd = 5 
simulated_data <- tibble(
  years = seq(2007,2024),
  total_decedents = rnorm(18,50,5)
)

#write simulated data as csv file
write.csv(simulated_data, "data/raw_data/simulated_data.csv")

#See what the graph looks like.

simulated_data |> 
  ggplot(aes(x = years, y = total_decedents)) +
  geom_bar(stat="identity") +
  ggtitle("Bar plot of shelter residents' total decedents from 2007 to 2024 by year") +
  xlab("Years") +
  ylab("Total decedents")
