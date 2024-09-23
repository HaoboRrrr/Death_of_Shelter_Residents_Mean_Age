#### Preamble ####
# Purpose: Downloads and saves the Death of shelter residents mean age data from Opendatatoronto
# Author: Haobo Ren
# Date: 23 September 2024
# Contact: haobo.ren@mail.utoronto.ca
# License: MIT
# Pre-requisites: NA
# Any other information needed? NA


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####

#Search package from opendatatoronto
death_of_shelter_residents_package <- search_packages("Deaths of Shelter Residents")

#Show package info
package_info <- show_package(death_of_shelter_residents_package)
package_info$id

#Get the id of the data we wanted.
resources <- death_of_shelter_residents_package %>% list_package_resources()
resources

#load the data on the 6th row.
raw_data <- filter(resources, row_number()==6) %>% 
  get_resource()

#Take a look at our dataset
head(raw_data)

#### Save data ####
write_csv(raw_data, "data/raw_data/raw_data.csv") 

      
