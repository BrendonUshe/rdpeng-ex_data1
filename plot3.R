## Plot 3

## Create Plot 3
with(Plot1, {
   plot(Sub_metering_1~dateTime, type="l",
        ylab="Global Active Power (kilowatts)", xlab="")
    lines(Sub_metering_2~dateTime,col='Red')
    lines(Sub_metering_3~dateTime,col='Blue')
  })
  legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


## Plot 3 saved to device

dev.copy(png, file="plot3.png", height=480, width=480)

dev.off()

##End Plot 3