source("load_data.R")

df <- data.load()

png("plot4.png")

par(mfcol=c(2,2))

plot(df$DateTime, df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

plot(df$DateTime, df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")

lines(df$DateTime, df$Sub_metering_2, col="red")

lines(df$DateTime, df$Sub_metering_3, col="blue")

legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, bty="n")

plot(df$DateTime, df$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(df$DateTime, df$Global_reactive_power, type="l", xlab="datetime", ylab="Global reactive power")

dev.off()