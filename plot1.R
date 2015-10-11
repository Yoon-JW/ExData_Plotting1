
plot1 <- function(data=NULL){

	# Load Data 
	source("load_data.R")
	if(is.null(data)){
	power <- load_data()
	}

	# Load png device 
	png(file="plot1.png", width=480, height=480)
	
	# Create plot
	hist(power$Global_active_power, col="red", 
		main="Global Active Power", 
		xlab="Global Active Power(kilowatts)", 
		ylab="Frequency")

	# Close graphic device
	dev.off()

}