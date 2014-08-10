plot4 <- function(){

  df <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?",stringsAsFactors=FALSE) #read text file

  df$Time <- strptime(paste(df$Date,df$Time), "%d/%m/%Y %H:%M:%S") # Add formated Date/Time for X axis

  df$Date <- as.Date(df$Date, format = "%d/%m/%Y")# format Date for subsetting

  td <- df[df$Date >= "2007-02-01" & df$Date <= "2007-02-02", ] # Create Subset

  par(mfrow = c(2,2)) #set up 4 charts

  plot(td$Time,td$Global_active_power,xlab="",ylab="Global Active Power",type="l") #plot1

  plot(td$Time,td$Voltage,xlab="datetime",ylab="Voltage",type="l")#plot2

  plot(td$Time,td$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l") #plot3
     lines(td$Time,td$Sub_metering_3,type="l",col="Blue")
     lines(td$Time,td$Sub_metering_2,type="l",col="Red")

     legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), lwd=c(2.5,2.5,2.5),col=c("Black","blue","red"),bty="n",pch=1,cex=0.5)


  plot(td$Time,td$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l")#plot4

  dev.copy(png,"plot4.png",width=480,height=480,res=120)#Plot4 to File
  
  par(mfrow = c(2,2),mar = c(4,4,0.5,0.5),oma = c(1.5,2,1,1)) #set up 4 charts

  plot(td$Time,td$Global_active_power,xlab="",ylab="Global Active Power",type="l") #plot1

  plot(td$Time,td$Voltage,xlab="datetime",ylab="Voltage",type="l")#plot2

  plot(td$Time,td$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l") #plot3
     lines(td$Time,td$Sub_metering_3,type="l",col="Blue")
     lines(td$Time,td$Sub_metering_2,type="l",col="Red")

     legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), lwd=c(2.5,2.5,2.5),col=c("Black","blue","red"),bty="n",pch=1,cex=0.5)


  plot(td$Time,td$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l")#plot4

   dev.off()




}