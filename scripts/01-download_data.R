#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Chloe Thierstein 
# Date: 3 April 2023 
# Contact: chloe.thierstein@mail.utoronto.ca 
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(readxl)

#### Downloading data ####

shift_virtual_care_raw_data <- read_excel("inputs/data/shift_to_virtual_care_raw_data.xlsx", 
                                             sheet = "4 Raw data table")

#### Saving data ####

write_csv(shift_virtual_care_raw_data, "inputs/data/shift_virtual_care_raw_data.csv") 


         