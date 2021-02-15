# Load the data from text file
powerData <- read.csv("household_power_consumption.txt", stringsAsFactors = FALSE, sep = ";", header = TRUE)
# convert the "Date" column of the "powerData" data set to a Date format 
# and convert the 3rd to 9th columns to numeric formats
powerData$Date <- as.Date(powerData$Date, format = "%d/%m/%Y")
for (i in 3:9)
  powerData[, i] <- as.numeric(powerData[, i])
# subset the data set for the particular dates
powerSub <- subset(powerData, Date >= "2007-02-01" & Date <= "2007-02-02")
#add a new column to the data set which contains both the "Date" and "Time" for the data 
#and we subset the new "Date_Time" along with the other numeric columns

Date_Time <- paste(powerSub$Date, powerSub$Time)
powerSub$DateTime <- as.POSIXct(Date_Time)
powerData <- powerSub[, c(10, 3:9)]


# Plot 1: Global Active Power vs Frequency of Use

hist(powerData$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

