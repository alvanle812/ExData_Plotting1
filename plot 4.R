getwd()
setwd("./dropbox/coursera/Exploratory Data Analysis/Project 1")
household_power_consumption <- read.csv("~/Dropbox/Coursera/Exploratory Data Analysis/project 1/household_power_consumption.txt", sep=";", stringsAsFactors = FALSE, na.strings = "?")

data <- subset(household_power_consumption, household_power_consumption$Date == "1/2/2007" |  household_power_consumption$Date == "2/2/2007")

# Plot 4
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

z = paste(data[,1],data[,2],sep = ' ')
DateTime <- strptime(z, format = '%d/%m/%Y %H:%M:%S')
data <- cbind(data, DateTime)
plot(data$DateTime, data$Global_active_power, type="l", ylab = "Global Active Power", xlab = "")

plot(data$DateTime, data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

plot(data$DateTime, data$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab = "", col = "black")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), lty= "solid", bty="n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") )

plot(data$DateTime, data$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
dev.off()