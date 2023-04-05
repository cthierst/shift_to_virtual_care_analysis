# Variations in Adoption Rates of Virtual Mental Health Care Between Provinces During the COVID-19 Pandemic Indicate Differing Preferences for Delivery of Care

## Overview

This repository contains all files necessary to conduct an analysis of the Canadian Institute for Health Information's data on the shift to virtual care for mental health. The aim of this analysis is to determine the rate of adoption of virtual mental health services for each province and determine factors that cause variance.

## Requirements

This analysis requires RStudio and Quarto. To complete this project you will need to install both of these. I recommend using RStudio on your local computer or Posit Cloud as your IDE.

Following the download of your environment, you will need to download the packages associated with this project. These are:

-   `tidyverse`

-   `ggplot2`

-   `RColorBrewer`

-   `kableExtra`

-   `knitr`

-   `dplyr`

-   `here`

-   `labelled`

-   `haven`

-   `janitor`

-   `readr`

-   `tibble`

## Downloading Data

As the data for this project comes from the Canadian Institute for Health Information, I do not have permission to store the data within our repository. To access this data, you will need to download the data physically from their [`website`](https://www.cihi.ca/en/topics/health-equity-and-population-health/data-tables?keyword=virtual&acronyms_databases=All&sort_by=field_published_date_value&items_per_page=10). You will need to store this data in your inputs folder at,

`inputs/data/shift_to_virtual_care_raw_data.xlsx`

Following this, you can download the data by running the script, 01-download_data.R which is located in the scripts folder. This will download the data and save the raw data as a .csv file to your input folder.

`inputs/data/shift_virtual_care_raw_data.csv`

to ensure that the data is not being pushed to GitHub.

## Cleaning Data

Next we will clean the data to help us better use and understand the data. In the scripts folder, you will find the script, 02-data_cleaning.R. This script handles all of our data cleaning.

## Analyzing Data

For this project, data analysis occurs within the paper.qmd file which is located at

`outputs/paper.qmd`

This is a Quarto document and can be used to generate the paper.pdf file which is located at

`outputs/paper.pdf`

Raw references used within the .qmd file are available at

`outputs/eferences.bib`

## Simulating Data

Simulated data for this project is located at

`scripts/00-simulate_data.R`

## Testing data

Three tests for this project are located at

`scripts/03-test_data.R`
