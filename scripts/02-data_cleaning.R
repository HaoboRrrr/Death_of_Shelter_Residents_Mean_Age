#### Preamble ####
# Purpose: Clean the raw data into analysis data. We need two variables: Years
#          and Total decedents.
# Author: Haobo Ren
# Date: 23 September 2024
# Contact: haobo.ren@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Clean data ####
raw_shelter_data <- read_csv("data/raw_data/raw_data.csv")

#Clean the feature names in the data
name_cleaned_data <- clean_names(raw_shelter_data)

#Select the two columns we need: Years and Total decedents.
cleaned_data <- name_cleaned_data |> select(year, total_decedents)

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
