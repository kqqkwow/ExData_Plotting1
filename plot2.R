data <- read.table("D:/household_power_consumption/household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")
time <- paste(data$Date,data$Time,sep = " ")
data$Date <- as.Date(data$Date,"%d/%m/%Y")
data$Time <- strptime(time,format ="%d/%m/%Y %H:%M:%S")
newdata <- data[((data$Date=="2007-02-01") | (data$Date=="2007-02-02")),]
png(filename = "d:/ex1/plot2.png", width = 480, height = 480, units = "px")
plot(newdata$Time,newdata$Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xlab="")
dev.off()