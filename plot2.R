# Loading Data;
Data<-read.csv('household_power_consumption.txt',sep=';',na.strings="?");
data2<-Data[Data$Date=="1/2/2007" | Data$Date=="2/2/2007",];
#Making plot;
png('plot2.png')
plot(data2$Global_active_power,type='l',ylab='Global Active Power (Killowatts)',xlab='',xaxt='n')
axis(1,labels=c('Thu','Fri','Sat'),at=c(0,1500,length(data2$Global_active_power)))
dev.off();