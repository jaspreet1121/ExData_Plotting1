library(dplyr)

a<-read.table("household_power_consumption.txt",sep = ";",header = TRUE)
b<-filter(a,Date=="1/2/2007"|Date=="2/2/2007")
png("plot1.png",height=480,width=480)
hist(as.numeric(paste(b$Global_active_power)),col = "red",xlab = "Global Active Power",main = "histogram of Global Active Power")
dev.off()