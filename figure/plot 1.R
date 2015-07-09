getwd()
setwd("./dropbox/coursera/Exploratory Data Analysis/Project 1")
household_power_consumption <- read.csv("~/Dropbox/Coursera/Exploratory Data Analysis/project 1/household_power_consumption.txt", sep=";", stringsAsFactors = FALSE, na.strings = "?")

data <- subset(household_power_consumption, household_power_consumption$Date == "1/2/2007" |  household_power_consumption$Date == "2/2/2007")

# Plot 1
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red", breaks = 12)
dev.off()