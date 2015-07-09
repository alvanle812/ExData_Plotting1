getwd()
setwd("./dropbox/coursera/Exploratory Data Analysis/Project 1")
household_power_consumption <- read.csv("~/Dropbox/Coursera/Exploratory Data Analysis/project 1/household_power_consumption.txt", sep=";", stringsAsFactors = FALSE, na.strings = "?")

data <- subset(household_power_consumption, household_power_consumption$Date == "1/2/2007" |  household_power_consumption$Date == "2/2/2007")

# Plot 2
png("plot2.png", width=480, height=480)
z = paste(data[,1],data[,2],sep = ' ')
DateTime <- strptime(z, format = '%d/%m/%Y %H:%M:%S')
data <- cbind(data, DateTime)

plot(data$DateTime, data$Global_active_power, type="l", ylab = "Global Active Power(kilowatts)", xlab = "")
dev.off()
