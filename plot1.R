source("load_data.R")

setwd("exdata")

plot1 <- "plot1.png"
if(!file.exists(plot1)){
  png(plot1, width = 480, height = 480)
  hist(data_table$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
  dev.off()
}

setwd("../")