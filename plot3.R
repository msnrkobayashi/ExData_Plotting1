setwd("C:/Users/msnrk/Github/coursera/datascience/Exploratory_Data_Analysis/ExData_Plotting1")

dataFile <- "./household_power_consumption.txt"
my_data <- read.table(dataFile, header = TRUE, stringsAsFactors=FALSE, sep=";")
subsetData <- my_data[my_data$Date %in% c("1/2/2007","2/2/2007"),]

datetime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(datetime,subsetData$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
points(datetime,subsetData$Sub_metering_1,type = "l")
points(datetime,subsetData$Sub_metering_2,col="red",type="l")
points(datetime,subsetData$Sub_metering_3,col="blue",type="l")
legend("topright",col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1))
dev.off()
