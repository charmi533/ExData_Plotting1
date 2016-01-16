source("load_data.R")

setwd("exdata")

plot2 <- "plot2.png"
if(!file.exists(plot2)){
  png(plot2, width = 480, height = 480)
  plot(data_table$Time, data_table$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
  dev.off()
}

setwd("../")