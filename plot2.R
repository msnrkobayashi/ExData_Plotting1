setwd("C:/Users/msnrk/Github/coursera/datascience/Exploratory_Data_Analysis/ExData_Plotting1")

dataFile <- "./household_power_consumption.txt"
my_data <- read.table(dataFile, header = TRUE, stringsAsFactors=FALSE, sep=";")
subsetData <- my_data[my_data$Date %in% c("1/2/2007","2/2/2007"),]

datetime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datetime, subsetData$Global_active_power, type="l", xlab="",ylab = "Global Active Power (kilowatts)")
dev.off()

