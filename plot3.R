
plot3 <- function(data=NULL) {

	# Load Data
	source("load_data.R")
	if (is.null(data)){
	power <- load_data()
	}

	# Load Graphic Device
	png(file="plot3.png", width=480, height=480)

	# Create Plot
	with(power, plot(Time, Sub_metering_1, 
		      xlab="", ylab="Energy sub metering", 
		      type="n"))
	with(power, points(Time, Sub_metering_1, 
			type="l", col="black"))
	with(power, points(Time, Sub_metering_2,
			type="l", col="red"))
	with(power, points(Time, Sub_metering_3,
			type="l", col="blue"))
	legend("topright", lty=1,
		 col=c("black", "red", "blue"),
	       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


	# Close Graphic Device
	dev.off()
}