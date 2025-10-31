# Exploratory Data Analysis on Daily Precipitation in Des Moines, IA

This is an R-based EDA project for exploring daily precipitation amounts in Des Moines, IA from January 1st, 2025 to August 9th, 2025.

## Overview

The scripts clean, analyze, and visualize daily precipitation data collected at Des Moines International Airport. The main output is a line graph of the daily amount of precipitation over time, highlighting dry spells and heavy rainfall events.

## Files

- `dsmprecipdata.csv`: Raw daily precipitation data.
- `preparedata.R`: Cleans and formats the dataset for analysis.
- `analyzedata.R`: Creates a line graph of daily precipitation.
- `dsmprecipeda.R`: Main workflow to run everything.

## How to Use

1. Install R [https://cloud.r-project.org](https://cloud.r-project.org/).
2. Download the source code from GitHub from one of two ways:
- Download the source code from the latest release on GitHub
- Use git to clone the repository using the following command (requires [git](https://git-scm.com/install/) to be installed):
   ```bash
   git clone https://github.com/Bloomy52/dsm-prcp-eda.git
   ```
3. Put all files in the same folder.
4. Install Required Packages using the R Console
   ```r
   install.packages("tidyverse")
   ```
5. Open and run `dsmprecipeda.R` in R or RStudio. This will display the precipitation graph in your R session.

## What the Line Graph Shows

- Daily precipitation (in inches) from January through early August. 
- - X\-axis shows dates labeled week\-by\-week to make weekly trends easy to read.
- Spikes indicate days with significant rain.
- Extended periods of low or zero values highlight dry spells.

## Notes

- "Trace" precipitation ("T") is set to 0.001 inches.
- Only daily summary ("SOD") observations are used.

## Data Source

The dataset is sourced from the National Centers for Environmental Information (NCEI) and contains daily weather observations for Des Moines International Airport.
To access the dataset, please visit the link below and add the dataset to the cart. 
Depending on when you source the dataset, the data may have more recent observations than those included in this repository.
https://www.ncdc.noaa.gov/cdo-web/datasets/GHCND/stations/GHCND:US1IAPK0003/detail 

## License

MIT

## Author

Louie Bloomberg

---