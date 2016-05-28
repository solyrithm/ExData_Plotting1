power <- read.csv("C:/Users/solyrithm/Desktop/Coursera R Materials/household_power_consumption.txt", 
                  sep=";", na.strings="?")

power$Date <- strptime(power$Date, format = "%d/%m/%Y")

subset_power <- subset(power, power$Date >= "2007-02-01" & power$Date <= "2007-02-02")

png(filename = "plot2.png", width = 480, height = 480)

plot(x = subset_power$Time, y = subset_power$Global_active_power, type = "l")

dev.off()