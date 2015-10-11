plot2 <- function(data=NULL){

	# Load Data 
	source("load_data.R")
	if(is.null(data)){
	power <- load_data()
	}

	# Load png device 
	png(file="plot2.png", width=480, height=480)
	
	# Create plot
	plot(power$Time, power$Global_active_power, 
		type="l",
		xlab="",
		ylab="Global Active Power(kilowatts)")

	# Close graphic device
	dev.off()

}