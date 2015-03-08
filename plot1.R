## This script assumes that you have downloaded and extracted the file "household_power_consumption.txt" and it is in the correct working directory.

#Read in the Dataset
fullDataset <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors = FALSE)

#subset the data on the required timeframe
dataSubset <- subset(fullDataset, fullDataset$Date == "1/2/2007" | fullDataset$Date == "2/2/2007")

#make histogram plot to console
hist(as.numeric(dataSubset$Global_active_power), col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)")

#Copy console to png file
dev.copy(png, file = "plot1.png" ,width = 480, height = 480) 
dev.off()
