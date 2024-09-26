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

#Select the two columns we need: Years, Total decedents and average age of decedents.
cleaned_data <- name_cleaned_data |> select(year, total_decedents, average_age_of_death_all_decedents)

#mutate the year "2024 ytd" to "2024"
cleaned_data[18, "year"] = "2024"

#the data type of year is string, change it to integer
cleaned_data$year <- as.integer(cleaned_data$year)

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
