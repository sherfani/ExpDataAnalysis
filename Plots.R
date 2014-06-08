## Exploratory Data Analysis
## Course Project 1
## Plot 1

hpc <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";", na.strings="?",
                  col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))

png(file = "plot1.png", bg = "transparent", width = 480, height = 480, units = "px")

with(hpc, hist(Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power"))

dev.off()




## Exploratory Data Analysis
## Course Project 1
## Plot 2

hpc <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";", na.strings="?",
                  col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))
hpc$DT <- strptime(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")

png(file = "plot2.png", bg = "transparent", width = 480, height = 480, units = "px")

with (hpc, plot(DT, Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab=""))

dev.off()





## Exploratory Data Analysis
## Course Project 1
## Plot 3

hpc <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";", na.strings="?",
                  col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))
hpc$DT <- strptime(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")

png(file = "plot3.png", bg = "transparent", width = 480, height = 480, units = "px")

with(hpc, plot(DT, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
with(hpc, lines(DT, Sub_metering_1, col="black"))
with(hpc, lines(DT, Sub_metering_2, col="red"))
with(hpc, lines(DT, Sub_metering_3, col="blue"))
legend("topright", lty=c(1,1,1), col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

dev.off()






## Exploratory Data Analysis
## Course Project 1
## Plot 4

hpc <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";", na.strings="?",
                  col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))
hpc$DT <- strptime(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")

png(file = "plot4.png", bg = "transparent", width = 480, height = 480, units = "px")
par(mfrow=c(2,2))

#Plot 1
with(hpc, plot(DT,Global_active_power,type="l",xlab=""))

#Plot 2
with(hpc, plot(DT,Voltage,type="l",xlab="datetime"))

#Plot 3
with(hpc, plot(DT, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
with(hpc, lines(DT, Sub_metering_1, col="black"))
with(hpc, lines(DT, Sub_metering_2, col="red"))
with(hpc, lines(DT, Sub_metering_3, col="blue"))
legend("topright", lty=c(1,1,1), bty = "n", col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),text.font=1,cex=0.64)

#Plot 4
with(hpc,plot(DT,Global_reactive_power,t="l",xlab="datetime"))

dev.off()
