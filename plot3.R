data1 <- read.table("household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")
data2 <- data1[data1$Date == "1/2/2007" | data1$Date == "2/2/2007",]
png("plot3.png")
plot(data2$Sub_metering_1,
     type = "n",
     xaxt = "n",
     ylab = "Energy sub metering",
)
, data2$Sub_metering_2, data2$Sub_metering_3)
axis(1, at = c(0,1450,2900), labels = c("Thu", "Fri", "Sat"), las = 1)
lines(data2$Sub_metering_1, col = "black")
lines(data2$Sub_metering_2, col = "red")
lines(data2$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1",
                  "Sub_metering_2",
                  "Sub_metering_3"), 
       seg.len = 1,
       lwd = 1, 
       col = c("black","red","blue")
)
dev.off()
dev.cur()