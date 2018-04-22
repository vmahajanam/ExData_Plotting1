powerDataFile <- "./household_power_consumption.txt" 

powerData <- read.table(powerDataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 

subSetpowerData <- powerData[powerData$Date %in% c("1/2/2007","2/2/2007") ,] 
 
globalActivePower <- as.numeric(subSetpowerData$Global_active_power) 

datetime <- strptime(paste(subSetpowerData$Date, subSetpowerData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")  

png("plot2.png", width=480, height=480) 

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)") 

dev.off()