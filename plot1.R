# Loading Data;
Data<-read.csv('household_power_consumption.txt',sep=';',na.strings="?");
data2<-Data[Data$Date=="1/2/2007" | Data$Date=="2/2/2007",];
#Making plot;
png('plot1.png')

hist(data2$Global_active_power,col='red',xlab='Global Active Power (Killowatts)',main = 'Global Active Power');
dev.off();