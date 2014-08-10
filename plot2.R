plot2 <- function(){

df <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?",stringsAsFactors=FALSE) #read txt file

df$Time <- strptime(paste(df$Date,df$Time), "%d/%m/%Y %H:%M:%S")  # Add formated Date/Time for X axis


df$Date <- as.Date(df$Date, format = "%d/%m/%Y") # format Date for subsetting


td <- df[df$Date >= "2007-02-01" & df$Date <= "2007-02-02", ]  # Create Subset


plot(td$Time,td$Global_active_power,xlab="",ylab="Global Active Power(kilowatts)",type="l") # Plot2

png("plot2.png",width=480,height=480,res=120)
plot(td$Time,td$Global_active_power,xlab="",ylab="Global Active Power(kilowatts)",type="l") # Plot2 to file
dev.off()
}