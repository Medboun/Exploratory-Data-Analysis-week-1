# Subseting the data
Data <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(Data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subData <- subset(Data,Data$Date=="1/2/2007" | Data$Date =="2/2/2007")

#calling the basic plot function
hist(as.numeric(as.character(subData$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

# naming graph
title(main="Global Active Power")
