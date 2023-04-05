#### Preamble ####
# Purpose: Cleans and saves the raw data from the Canadian Institute of Health Information (CIHI) (Link:https://www.cihi.ca/en/access-data-and-reports/data-tables?keyword=mental&published_date=All&acronyms_databases=All&type_of_care=All&place_of_care=All&population_group=All&health_care_quality=All&health_conditions_outcomes=All&health_system_overview=All&sort_by=field_published_date_value&items_per_page=10)
# Author: Chloe Thierstein 
# Date: 3 April 2023 
# Contact: chloe.thierstein@mail.utoronto.ca 
# License: MIT
# Pre-requisites: Need to be able to find data from CIHI
# Any other information needed? N/A


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)
library(here)

#### Clean data ####

shift_virtual_care_clean_data <- read.csv(here::here("./inputs/data/shift_virtual_care_raw_data.csv"))

#### Cleaning column names ####

names(shift_virtual_care_clean_data)[1] <- "Fiscal Year"

names(shift_virtual_care_clean_data)[2] <- "Fiscal Quarter"

names(shift_virtual_care_clean_data)[3] <- "Jurisdiction"

names(shift_virtual_care_clean_data)[4] <- "Physician Specialty"

names(shift_virtual_care_clean_data)[5] <- "Sex"

names(shift_virtual_care_clean_data)[6] <- "Age Group"

names(shift_virtual_care_clean_data)[7] <- "Income Quintile"

names(shift_virtual_care_clean_data)[8] <- "Urban or Rural/Remote Neighbourhood"

names(shift_virtual_care_clean_data)[9] <- "Modality"

names(shift_virtual_care_clean_data)[10] <- "Number of Patients"

names(shift_virtual_care_clean_data)[11] <- "Number of Services"

names(shift_virtual_care_clean_data)[12] <- "Total Payments"

#### Removing NA rows ####

shift_virtual_care_clean_data <- 
  shift_virtual_care_clean_data |>
  na.omit(datacollected) 

#### Removing extra "title" row ####

shift_virtual_care_clean_data <- shift_virtual_care_clean_data[-c(2),] 

#### Cleaning names ####

shift_virtual_care_clean_data <- 
  clean_names(shift_virtual_care_clean_data)



#### Save data ####
# [...UPDATE THIS...]
# change cleaned_data to whatever name you end up with at the end of cleaning
write_csv(shift_to_virtual_care_clean_data, "inputs/data/shift_to_virtual_care_clean_data.csv")

