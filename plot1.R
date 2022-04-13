power <-read.table("./household_power_consumption.txt", header = TRUE, sep = ";")
Date <- as.Date(power$Date)
class(Date)

sub_power <- subset( power, power$Date == "1/2/2007" | power$Date == "2/2/2007")
class(sub_power$Global_active_power)
Glabal_active_power <- as.numeric(sub_power$Global_active_power)

hist(as.numeric(sub_power$Global_active_power), col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power(Kilowatts)")