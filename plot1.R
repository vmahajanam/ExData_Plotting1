powerDataFile <- "./household_power_consumption.txt" 

powerData <- read.table(powerDataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 

subSetpowerData <- powerData[powerData$Date %in% c("1/2/2007","2/2/2007") ,] 

globalActivePower <- as.numeric(subSetpowerData$Global_active_power) 

png("plot1.png", width=480, height=480) 

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 

dev.off() 