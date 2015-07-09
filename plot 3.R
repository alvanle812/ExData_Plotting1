getwd()
setwd("./dropbox/coursera/Exploratory Data Analysis/Project 1")
household_power_consumption <- read.csv("~/Dropbox/Coursera/Exploratory Data Analysis/project 1/household_power_consumption.txt", sep=";", stringsAsFactors = FALSE, na.strings = "?")

data <- subset(household_power_consumption, household_power_consumption$Date == "1/2/2007" |  household_power_consumption$Date == "2/2/2007")

# Plot 3  Can't figure out why in the preview in Rstudio the legend is so large, but it turned out to be ok in the png file
png("plot3.png", width = 480, height = 480)
plot(data$DateTime, data$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab = "", col = "black")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), lty= "solid", bty="o", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") )
dev.off()