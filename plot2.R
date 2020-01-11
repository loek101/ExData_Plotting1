data1 <- read.table("household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")
data2 <- data1[data1$Date == "1/2/2007" | data1$Date == "2/2/2007",]
png("plot2.png")
plot(data2$Global_active_power,
     pch = 26,
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     xaxt = "n")
axis(1, at = c(0,1450,2900), labels = c("Thu", "Fri", "Sat"), las = 1)
lines(data2$Global_active_power)
dev.off()
dev.cur()