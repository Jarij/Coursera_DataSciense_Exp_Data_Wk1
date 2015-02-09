# The name of table for plotting is "finalData" as visible in the "data_load.R"
#
# As given in the model png
# name of the plot = "plot4.png"
# width of plot = 480, heights of plot = 480

library(datasets)

#
# Create multiple plots -> 2 rows and 2 columns
par(mfrow=c(2,2))

# Top left corner
plot(finalData$Time, finalData$Global_active_power, type="l", xlab="", ylab="Global Active Power")

# Top right corner
plot(finalData$Time, finalData$Voltage, type="l", xlab="datetime", ylab="Voltage")

# Bottom left corner
plot(finalData$Time, finalData$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(finalData$Time, finalData$Sub_metering_2, col="red")
lines(finalData$Time, finalData$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, box.lwd=0)

# Bottom right corner
plot(finalData$Time, finalData$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
lines(finalData$Time, finalData$Global_reactive_power)

# copy it to file -> File will be stored to working directory
dev.copy(png, file="plot4.png", height=480, width=480)
# Close the device
dev.off()
