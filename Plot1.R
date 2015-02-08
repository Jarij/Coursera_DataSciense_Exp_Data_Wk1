# The name of table for plotting is "finalData" as visible in the "data_load.R"
#
# As given in the model png
# name of the plot = "plot1.png"
# width of plot = 480, heights of plot = 480
# Annotations: main="Global Active Power", xlab="Global Active Power (kilowats)", ylab="Frequency", col="red"
library(datasets)

# Open device (windows) for file writing -> File will be stored to working directory
png("plot1.png", width=480, height=480)

# Create histogram
hist(finalData$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowats)", ylab="Frequency", col="red")

# Close the device 
dev.off()
