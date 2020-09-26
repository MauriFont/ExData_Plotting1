source("load_data.R")

df <- data.load()

png("plot3.png")

plot(df$DateTime, df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")

lines(df$DateTime, df$Sub_metering_2, col="red")

lines(df$DateTime, df$Sub_metering_3, col="blue")

legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)

dev.off()