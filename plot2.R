## This script assumes that you have downloaded and extracted the file "household_power_consumption.txt" and it is in the correct working directory.

#Read in the Dataset - uncomment if needed
#fullDataset <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors = FALSE)

#subset the data on the required timeframe - uncomment if needed
#dataSubset <- subset(fullDataset, fullDataset$Date == "1/2/2007" | fullDataset$Date == "2/2/2007")

#Combine date and time columns into 1 for plotting
dataSubset$Datetime <- strptime(paste(dataSubset$Date, dataSubset$Time), "%d/%m/%Y %H:%M:%S")

#Create the line plot
plot(dataSubset$Datetime, dataSubset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

#Copy the graph to a png file
dev.copy(png, file = "plot2.png" ,width = 480, height = 480) 
dev.off()
