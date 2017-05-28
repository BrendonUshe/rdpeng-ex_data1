
Plot1 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

## Format the current date in the Data Set to Type Date

Plot1$Date <- as.Date(Plot1$Date, "%d/%m/%Y")

## Filter data set from Feb. 1, 2007 to Feb. 2, 2007

Plot1 <- subset(Plot1,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))
Plot1 <- Plot1 [complete.cases(Plot1),]

## Combine Date and Time column

dateTime <- paste(Plot1$Date, Plot1$Time)

## Name the vector
dateTime <- setNames(dateTime, "DateTime")

## Remove Date and Time column
Plot1 <- Plot1 [ ,!(names(Plot1) %in% c("Date","Time"))]

## Add DateTime column
Plot1 <- cbind(dateTime, Plot1)

## Format dateTime Column
Plot1$dateTime <- as.POSIXct(dateTime)

## Plot the Histogram named Plot1
hist(Plot1$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")

## Push the file to a device *.png and close the device

dev.copy(png,"plot1.png", width=480, height=480)

dev.off()

## End of Code sequence