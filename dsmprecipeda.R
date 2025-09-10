# DSM Precipitation Data EDA
# Main File
# SPDX-License-Identifier: MIT
# Copyright (C) 2025 Louie Bloomberg


#Install Tidyverse
#install.packages("tidyverse")
#Load Tidyverse
library(tidyverse)

#Source the R files
source("preparedata.R")
source("analyzedata.R")

#Import the dataset to R
dsmprecipdata_raw <- read.csv(file="dsmprecipdata.csv")

dsmprecipdata <- clean_prep_data(dsmprecipdata_raw)

dsm_prcp_graph <- graph_prcp_monthly(dsmprecipdata)














