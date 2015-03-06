Data<-read.csv('D:/Coursera/ExploratoryDataAnalysis/exdata_data_household_power_consumption/household_power_consumption.txt',sep=';',na.strings="?");
data2<-Data[Data$Date=="1/2/2007" | Data$Date=="2/2/2007",];
par(mfrow=c(2,2))
plot(data2$Global_active_power,type='l',ylab='Global Active Power',xlab='',xaxt='n',col="black")
axis(1,labels=c('Thu','Fri','Sat'),at=c(0,1500,length(data2$Global_active_power)))

#Plotting voltage
plot(data2$Voltage,type='l',ylab='Voltage',xlab='datetime',xaxt='n',col="black")
axis(1,labels=c('Thu','Fri','Sat'),at=c(0,1500,length(data2$Volatge)))

# Plotting energy per sub metering
plot(data2$Sub_metering_1,type='l',ylab='Energy sub metering',xlab='',xaxt='n',col="black")
lines(data2$Sub_metering_2,type='l',ylab='Energy sub metering',xlab='',xaxt='n',col="red")
points(data2$Sub_metering_3,type='l',ylab='Energy sub metering',xlab='',xaxt='n',col="blue")
# adding legend to the plot
legend(length(data2$Sub_metering_1)-1400,40, c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex=0.8, 
       col=c("black","red","blue"), lty=1, bty = "n");
axis(1,labels=c('Thu','Fri','Sat'),at=c(0,1500,length(data2$Sub_metering_1)))


# Plotting reactive power

plot(data2$Global_reactive_power,type='l',ylab='Global Reactive Power',xlab='',xaxt='n',col="black")
axis(1,labels=c('Thu','Fri','Sat'),at=c(0,1500,length(data2$Global_reactive_power)))