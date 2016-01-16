url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if(!file.exists("exdata")){
  dir.create("exdata")
  setwd("exdata")
  download.file(url, "household_power_consumption.zip")
}
setwd("exdata")
if(!file.exists("household_power_consumption.txt")){
  unzip("household_power_consumption.zip")
}

file <- "abc.rds"
if(!file.exists(file)){
  data_table <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, colClasses = c("character", "character", rep("numeric", 7)), na = "?")
  data_table$Time <- strptime(paste(data_table$Date, data_table$Time), format = "%d/%m/%Y %H:%M:%S") 
  data_table$Date <- as.Date(data_table$Date, format = "%d/%m/%Y")
  data_table <- subset(data_table, Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"))
  saveRDS(data_table, file)
} else {
  data_table <- readRDS(file)
}

setwd("../")