source("load_data.R")

df <- data.load()

png("plot2.png")

plot(df$DateTime, df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()