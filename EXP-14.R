library(reshape2)

data(airquality)

# Add Month name
airquality$MonthName <- month.name[airquality$Month]

# Melt
air_melt <- melt(
  airquality,
  id.vars = c("Month", "Day"),
  measure.vars = c("Ozone", "Solar.R", "Wind", "Temp")
)

print(head(air_melt))

# Cast: monthly averages
monthly_avg <- dcast(
  air_melt,
  Month ~ variable,
  fun.aggregate = mean,
  na.rm = TRUE
)

print(monthly_avg)
