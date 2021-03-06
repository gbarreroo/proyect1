# Plot 3: Energy Sub-Metering over Time



plot(powerData$Sub_metering_1 ~ powerData$DateTime, ylab = "Energy sub metering", xlab = "", type = "l")
lines(powerData$Sub_metering_2 ~ powerData$DateTime, col = 'Red')
lines(powerData$Sub_metering_3 ~ powerData$DateTime, col = 'Blue')
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

