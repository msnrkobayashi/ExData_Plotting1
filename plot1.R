setwd("C:/Users/msnrk/Github/coursera/datascience/Exploratory_Data_Analysis/ExData_Plotting1")

dataFile <- "./household_power_consumption.txt"
my_data <- read.table(dataFile, header = TRUE, stringsAsFactors=FALSE, sep=";")
subsetData <- my_data[my_data$Date %in% c("1/2/2007","2/2/2007"),]

png("plot1.png", width=480, height=480)
hist(as.numeric(subsetData$Global_active_power), col="red", xlab = "Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
