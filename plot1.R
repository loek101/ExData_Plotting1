data1 <- read.table("household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")
data2 <- data1[data1$Date == "1/2/2007" | data1$Date == "2/2/2007",]
png("plot1.png")
par(mfrow = c(1,1))
hist(data2$Global_active_power,
     col = "red", 
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")
dev.off()
dev.cur()