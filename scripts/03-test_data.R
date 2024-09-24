#### Preamble ####
# Purpose: Tests data
# Author: Haobo Ren
# Date: 23 September 2024
# Contact: haobo.ren@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Test for simulated data ####
simulated_data <- read.csv("data/raw_data/simulated_data.csv")

# Test for negative numbers
min(simulated_data$total_decedents) <= 0

# Test for NAs
all(is.na(simulated_data$total_decedents))
