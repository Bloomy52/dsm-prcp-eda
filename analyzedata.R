# Analyzes data w/ graphs
#SPDX-License-Identifier: MIT

graph_prcp_monthly <- function(dsmprecipdata)
{
  start_date <- as.Date("2025-01-01")
  end_date <- as.Date("2025-08-09")
  date_breaks_seq <- seq.Date(from = start_date, to = end_date, by = "1 week")

  graph <- ggplot(dsmprecipdata, aes(x=DATE, y=DailyPrecipitation)) +
    geom_line(color = "steelblue") +
    scale_y_continuous(breaks=seq(0,4,by=.5), minor_breaks = seq(0, 4, by=.25)) +
    scale_x_date(limits = c(start_date, end_date), breaks = date_breaks_seq, date_labels = "%b %d", expand = c(0,0)) +
    labs(
      title = "Line Graph of the Daily Precipitation in Des Moines, IA",
      subtitle = "From January 1, 2025 to August 9, 2025",
      x = "Date (by week)",
      y = "Precipitation (inches)",
        caption = "Data Source: National Centers for Environmental Information (NCEI) - NOAA"
    ) +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))

  return(graph)
}

