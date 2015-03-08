## This script assumes that you have downloaded and extracted the file 
##"household_power_consumption.txt" and it is in the correct working directory.

#Read in the Dataset - uncomment if needed
#fullDataset <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors = FALSE)

#subset the data on the required timeframe - uncomment if needed
#dataSubset <- subset(fullDataset, fullDataset$Date == "1/2/2007" | fullDataset$Date == "2/2/2007")

#Combine date and time columns into 1 for plotting - uncomment if needed
#dataSubset$Datetime <- strptime(paste(dataSubset$Date, dataSubset$Time), "%d/%m/%Y %H:%M:%S")

#Set up parameters for 4 graphs on 1 plot
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))

#Create the first plot (top left) of Global Active Power over time
plot(dataSubset$Datetime, dataSubset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

#Create the second plot (top right) of voltage over time
plot(dataSubset$Datetime, dataSubset$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

#Create the third plot ( bottom left) of energy sub-metering over time
#Create plot and add other 2 graphs with points function
plot(dataSubset$Datetime, dataSubset$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub-metering")
points(dataSubset$Datetime, dataSubset$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub-metering", col = "red")
points(dataSubset$Datetime, dataSubset$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub-metering", col = "blue")

#Add legend to topright
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Create the fourth plot (bottom right)
plot(dataSubset$Datetime, dataSubset$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power", ylim = c(0, 0.5))

#Copy the set of graphs to a png file
dev.copy(png, file = "plot4.png" ,width = 480, height = 480) 
dev.off()
