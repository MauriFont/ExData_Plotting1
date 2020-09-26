library(dplyr)

data.load <- function() {
  if (!file.exists("data.zip")) 
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "data.zip")
  if (!file.exists("household_power_consumption.txt"))
    unzip("data.zip")

  df <- read.table("household_power_consumption.txt", header=T, sep=";")
  
  df$DateTime <- as.POSIXct(paste(df$Date, df$Time), format="%d/%m/%Y %H:%M:%S")
  
  df <- select(df, -c(Date, Time))
  
  df <- subset(df, DateTime >= "2007-02-01" & DateTime < "2007-02-03")
  
  df
}