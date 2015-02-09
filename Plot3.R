# The name of table for plotting is "finalData" as visible in the "data_load.R"
#
# As given in the model png
# name of the plot = "plot3.png"
# width of plot = 480, heights of plot = 480

library(datasets)
#
# Create plot
plot(finalData$Time, finalData$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")

# Adding other parameters
lines(finalData$Time, finalData$Sub_metering_2, col="red")
lines(finalData$Time, finalData$Sub_metering_3, col="blue")

# Creating legned to top right corner
legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

# copy it to file -> File will be stored to working directory
dev.copy(png, file="plot3.png", height=480, width=480)

# Close the device
dev.off()
