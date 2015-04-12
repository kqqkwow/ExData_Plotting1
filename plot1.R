data <- read.table("D:/household_power_consumption/household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")
time <- paste(data$Date,data$Time,sep = " ")
data$Date <- as.Date(data$Date,"%d/%m/%Y")
data$Time <- strptime(time,format ="%d/%m/%Y %H:%M:%S")
newdata <- data[((data$Date=="2007-02-01") | (data$Date=="2007-02-02")),]
png(filename = "d:/ex1/plot1.png", width = 480, height = 480, units = "px")
hist(newdata$Global_active_power,col="red",xlab="Global Active Power(kilowatts)",ylim=c(0,1200),main="Global Active Power")
dev.off()