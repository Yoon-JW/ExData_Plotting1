plot4 <- function(data=NULL) {

	# Load Data
	if (is.null(data)){
	source("load_data.R")
	power <- load_data()
	}

	# Load Graphic Device
	png(file="plot4.png", width=480, height=480)

	# Create Plot
	par(mfrow=c(2,2))
	with(power, {
		plot(Time, Global_active_power, type="l",
		     xlab="", ylab="Global Active Power")
		plot(Time, Voltage, type="l",
		     xlab="datetime", ylab="Voltage")
		plot(Time, Sub_metering_1, type="l", 
		     xlab="", ylab="Energy sub metering")
		points(Time, Sub_metering_2, type="l", col="red")
		points(Time, Sub_metering_3, type="l", col="blue")
		legend("topright", lty=1, bty="n",
			col=c("black", "red", "blue"), 
			legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
		plot(Time, Global_reactive_power, xlab="", ylab="Global_reactive_power", type="l")
		})


	# Close Graphic Device
	dev.off()
}