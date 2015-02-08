# The name of table for plotting is "finalData" as visible in the "data_load.R"
#
# As given in the model png
# name of the plot = "plot2.png"
# width of plot = 480, heights of plot = 480
# Annotations: type = "1", xlab (x-axis-label) = "", ylab (y-axis label) = "Global Active Power (kilowats)"
library(datasets)

# Trying the second way lectures proposed: Write plot first and then copy it to file
# 
# Create plot
plot(finalData$Global_active_power, finalData$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

# copy it to file -> File will be stored to working directory
dev.copy(png, file="plot2.png", height=480, width=480)

# Close the device
dev.off()

