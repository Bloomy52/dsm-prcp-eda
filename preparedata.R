# Prepares the data for analysis
# SPDX-License-Identifier: MIT


clean_prep_data <- function (dsmprecipdata_raw) #Specific to the dataset provided with the source code
{

  #Only keep the daily data:
  dsmprecipdata_filtered <- filter(dsmprecipdata_raw, REPORT_TYPE == "SOD")

  #Replace the NAs and change to 0
  dsmprecipdata_dropNA <- dsmprecipdata_filtered
  dsmprecipdata_dropNA$DailyPrecipitation <- replace_na(dsmprecipdata_filtered$DailyPrecipitation, 0)

  #Change the Ts to 0.001
  dsmprecipdata_noT <- dsmprecipdata_dropNA
  dsmprecipdata_noT <- dsmprecipdata_noT %>%
    mutate(
      DailyPrecipitation = if_else(DailyPrecipitation == "T",0.001, as.numeric(DailyPrecipitation))
    )

  #Separate the DATE column to create Date and Time
  dsmprecipdata_dt <- dsmprecipdata_noT %>%
      separate(DATE, c("DATE", "TIME"), sep = "T")

  #Select the data columns which will actually be used for the EDA
  dsmprecipdata_selected <- select(dsmprecipdata_dt, c("DATE", "DailyPrecipitation"))

  #Create the Date Columns for the analyzation
  dsmprecipdata_mdy <- dsmprecipdata_selected %>%
    separate(DATE, c("MONTH", "DAY", "YEAR"), sep="-", remove=FALSE)



  #Only keep the daily data:
  dsmprecipdata_filtered <- filter(dsmprecipdata_raw, REPORT_TYPE == "SOD")

  #Replace the NAs and change to 0
  dsmprecipdata_dropNA <- dsmprecipdata_filtered
  dsmprecipdata_dropNA$DailyPrecipitation <- replace_na(dsmprecipdata_filtered$DailyPrecipitation, 0)

  #Change the Ts to 0.001
  dsmprecipdata_noT <- dsmprecipdata_dropNA
  dsmprecipdata_noT <- dsmprecipdata_noT %>%
    mutate(
      DailyPrecipitation = if_else(DailyPrecipitation == "T",0.001, as.numeric(DailyPrecipitation))
    )

  #Separate the DATE column to create Date and Time
  dsmprecipdata_dt <- dsmprecipdata_noT %>%
      separate(DATE, c("DATE", "TIME"), sep = "T")

  #Select the data columns which will actually be used for the EDA
  dsmprecipdata_selected <- select(dsmprecipdata_dt, c("DATE", "DailyPrecipitation"))

  #Create the Date Columns for the analyzation
  dsmprecipdata_mdy <- dsmprecipdata_selected %>%
    separate(DATE, c("MONTH", "DAY", "YEAR"), sep="-", remove=FALSE) %>%
    mutate(DATE = as.Date(DATE))

  return (dsmprecipdata_mdy)
}