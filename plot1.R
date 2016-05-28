power <- read.csv("C:/Users/solyrithm/Desktop/Coursera R Materials/household_power_consumption.txt", 
                  sep=";", na.strings="?")

power$Date <- strptime(power$Date, format = "%d/%m/%Y")

subset_power <- subset(power, power$Date >= "2007-02-01" & power$Date <= "2007-02-02")

png(filename = "plot1.png", width = 480, height = 480)

hist(x = subset_power$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col="red")

dev.off()