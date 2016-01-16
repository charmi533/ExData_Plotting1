source("load_data.R")

setwd("exdata")

plot3 <- "plot3.png"
if(!file.exists(plot3)){
  png(plot3, width = 480, height = 480)
  plot(data_table$Time, data_table$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
  lines(data_table$Time, data_table$Sub_metering_2, type = "l", col = "red")
  lines(data_table$Time, data_table$Sub_metering_3, type = "l", col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"))
  dev.off()
}

setwd("../")