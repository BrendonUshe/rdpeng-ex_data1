## Plot a graph for Plot 2

plot(Plot1$Global_active_power~Plot1$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

## Send Plot 2 to device *.png

dev.copy(png,"plot2.png", width=480, height=480)
dev.off()

## End of Plot 2