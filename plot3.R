## This script assumes that you have downloaded and extracted the file 
##"household_power_consumption.txt" and it is in the correct working directory.

#Read in the Dataset - uncomment if needed
#fullDataset <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors = FALSE)

#subset the data on the required timeframe - uncomment if needed
#dataSubset <- subset(fullDataset, fullDataset$Date == "1/2/2007" | fullDataset$Date == "2/2/2007")

#Combine date and time columns into 1 for plotting - uncomment if needed
#dataSubset$Datetime <- strptime(paste(dataSubset$Date, dataSubset$Time), "%d/%m/%Y %H:%M:%S")

#Create plot and add other 2 graphs with points function
plot(dataSubset$Datetime, dataSubset$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub-metering")
points(dataSubset$Datetime, dataSubset$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub-metering", col = "red")
points(dataSubset$Datetime, dataSubset$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub-metering", col = "blue")
    
#Add legend to topright
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
#Copy the graph to a png file   
dev.copy(png, file = "plot3.png" ,width = 480, height = 480) 
dev.off()
