library(dplyr)
library(lubridate)

a<-read.table("household_power_consumption.txt",sep = ";",header = TRUE)
b<-filter(a,Date=="1/2/2007"|Date=="2/2/2007")
x<-dmy_hms(paste(b$Date,b$Time))
png("plot2.png",height=480,width=480)
plot(x,as.numeric(paste(b$Global_active_power)),type = "l",ylab = "Global Active Power (kilowatts)",xlab = "")
dev.off()
