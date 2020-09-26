source("load_data.R")

df <- data.load()

png("plot1.png")

hist(as.numeric(df2$Global_active_power), col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

dev.off()