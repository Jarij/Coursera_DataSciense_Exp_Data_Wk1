# In Windows 8 automatic file download to "Downloads" - directory
# I didn't have time find correct parameters to be changed to get that working better - mayby next time

# Set working directory
setwd("C://Users//jari//Data_Science//working_Dir")

# Manually data extracted to working directory -> household_power_consumption.txt 

library(datasets)
myTable <- read.table("C://Users//jari//Data_Science//working_Dir//household_power_consumption.txt", header = TRUE, sep=";", colClasses = c("character", "character", rep("numeric",7)),na="?")

# Check the column names and structure
head(myTable)

# convert Date and Time variables to "Date/Time- class"
# Time part needed in the plot3
myTable$Time <- strptime(paste(myTable$Date, myTable$Time), "%d/%m/%Y %H:%M:%S")

# Date Structure update 16/12/2006 -> 2006-12-16 as given in the instructions
myTable$Date <- as.Date(myTable$Date, "%d/%m/%Y")

# Selected dates 2007-02-01 and 2007-02-02
SelDates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")

# Final data for plotting purposes
finalData <- subset(myTable, Date %in% SelDates)
