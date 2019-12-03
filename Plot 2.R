# Subseting the data
Data <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(Data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subData <- subset(Data,Data$Date=="1/2/2007" | Data$Date =="2/2/2007")

# Transforming the Date and Time vars from characters into objects of type Date and POSIXlt
subData$Date <- as.Date(subData$Date, format="%d/%m/%Y")
subData$Time <- strptime(subData$Time, format="%H:%M:%S")
subData[1:1440,"Time"] <- format(subData[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subData[1441:2880,"Time"] <- format(subData[1441:2880,"Time"],"2007-02-02 %H:%M:%S")


# calling the basic plot function
plot(subData$Time,as.numeric(as.character(subData$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)") 

# naming graph
title(main="Global Active Power Vs Time")
