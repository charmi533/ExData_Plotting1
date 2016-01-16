source("load_data.R")

setwd("exdata")

plot4 <- "plot4.png"
if(!file.exists(plot4)){
  png(plot4, width = 480, height = 480)
  par(mfrow = c(2,2))
  plot(data_table$Time, data_table$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")
  plot(data_table$Time, data_table$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
  plot(data_table$Time, data_table$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
  lines(data_table$Time, data_table$Sub_metering_2, type = "l", col = "red")
  lines(data_table$Time, data_table$Sub_metering_3, type = "l", col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"))
  plot(data_table$Time, data_table$Global_reactive_power, xlab = "", ylab = "Global Reactive Power ", type = "l")
  dev.off()
}

setwd("../")