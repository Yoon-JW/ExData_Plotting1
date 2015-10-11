# Load Data into R #
load_data <- function(){
	if(!file.exists("./data")){dir.create("./data")}
	power <- read.csv("./data/household_power_consumption.txt",
				header=TRUE,
				sep=";",
				colClasses=c("character", "character", rep("numeric", 7)),
				na="?")

	# Subsetting data only from 2007/2/1 to 2007/2/2 #
	power2 <- power[power$Date == "1/2/2007" | power$Date == "2/2/2007",]

	# Converting class of data/time variable to Date and POSIXlt # 
	power2$Time = strptime(paste(power2$Date, power2$Time), "%d/%m/%Y %H:%M:%S", tz="GMT")
	power2$Date <- as.Date(power2$Date, "%d/%m/%Y")

return(power2)
}



