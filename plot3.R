power <- read.csv("C:/Users/solyrithm/Desktop/Coursera R Materials/household_power_consumption.txt", 
                  sep=";", na.strings="?")

power$Date <- strptime(power$Date, format = "%d/%m/%Y")

subset_power <- subset(power, power$Date >= "2007-02-01" & power$Date <= "2007-02-02")

png(filename = "plot3.png", width = 480, height = 480)

plot(subset_power$Time, type="n",subset_power$Sub_metering_1)

points(subset_power$Sub_metering_1,col="black",pch=17)

points(subset_power$Sub_metering_2,col="red",pch=18)

points(subset_power$Sub_metering_3,col="blue",pch=19)

legend("topright",pch=c(17,18,19),col=c("black","red","blue"),
      legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()