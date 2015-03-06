Data<-read.csv('D:/Coursera/ExploratoryDataAnalysis/exdata_data_household_power_consumption/household_power_consumption.txt',sep=';',na.strings="?");
data2<-Data[Data$Date=="1/2/2007" | Data$Date=="2/2/2007",];

hist(data2$Global_active_power,col='red',xlab='Global Active Power (Killowatts)',main = 'Global Active Power');