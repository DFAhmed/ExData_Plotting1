# Loading Data;
Data<-read.csv('household_power_consumption.txt',sep=';',na.strings="?");
data2<-Data[Data$Date=="1/2/2007" | Data$Date=="2/2/2007",];
#Making plot;
png('plot3.png')
plot(data2$Sub_metering_1,type='l',ylab='Energy sub metering',xlab='',xaxt='n',col="black")
lines(data2$Sub_metering_2,type='l',ylab='Energy sub metering',xlab='',xaxt='n',col="red")
points(data2$Sub_metering_3,type='l',ylab='Energy sub metering',xlab='',xaxt='n',col="blue")
legend(length(data2$Sub_metering_1)-1000,37, c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex=0.8, 
       col=c("black","red","blue"),  lty=1);
axis(1,labels=c('Thu','Fri','Sat'),at=c(0,1500,length(data2$Global_active_power)))
dev.off()