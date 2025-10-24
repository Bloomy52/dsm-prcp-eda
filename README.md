# Des Moines, IA Exploratory Data Analysis on Precipitation
An R-based Exploratory Data Analysis (EDA) project on the precipitation amounts from January 1st, 2025 to August 25th, 2025 in Des Moines, IA.

## Project Overview

This repository provides R code and data to analyze daily precipitation observed at Des Moines International Airport. The workflow cleans raw weather data, prepares it for analysis, and visualizes precipitation trends over time. 

## Repository Contents

- `dsmprecipdata.csv`: Raw daily precipitation data for Des Moines, IA (2025).
- `preparedata.R`: R script for cleaning and preparing the raw CSV dataset for analysis.
- `analyzedata.R`: R script for generating graphs/visualizations of daily precipitation.
- `dsmprecipeda.R`: Main R script to run the full analysis workflow: imports data, sources helpers, and produces the graph.

## How It Works

- **Data Preparation**:  
  The `preparedata.R` script filters the dataset for daily summary observations ("SOD"), replaces missing values and traces ("T"), separates date/time columns, and formats the data for EDA.

- **Visualization**:  
  The `analyzedata.R` script defines a function to plot daily precipitation using `ggplot2` over the study period.

- **Main Analysis**:  
  Use `dsmprecipeda.R` to run everything: it loads libraries, sources helper scripts, imports the CSV, cleans it, and creates the precipitation graph.

## Usage Instructions

1. Make sure you have [R](https://cran.r-project.org/) installed.
2. Install required packages:
    ```r
    install.packages("tidyverse")
    ```
3. Place all provided files in the same directory.
4. Open `dsmprecipeda.R` and run it in R or RStudio.

## Example Analysis Flow

```r
library(tidyverse)
source("preparedata.R")
source("analyzedata.R")

dsmprecipdata_raw <- read.csv("dsmprecipdata.csv")
dsmprecipdata <- clean_prep_data(dsmprecipdata_raw)
dsm_prcp_graph <- graph_prcp_monthly(dsmprecipdata)
print(dsm_prcp_graph)
```

## Notes

- The analysis is specific to the provided dataset format.
- "Trace" precipitation ("T") values are converted to 0.001 inches.
- Only daily summary ("SOD") observations are used.

## Data Source
The dataset is sourced from the National Centers for Environmental Information (NCEI) and contains daily weather observations for Des Moines International Airport.
To access the dataset, please visit the link below and add the dataset to the cart. 
Depending on when you source the dataset, the data may have more recent observations than those included in this repository.
https://www.ncdc.noaa.gov/cdo-web/datasets/GHCND/stations/GHCND:US1IAPK0003/detail


## License

MIT License

## Author

Louie Bloomberg ([Bloomy52](https://github.com/Bloomy52))

---