plot3 <- function(){

     df <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?",stringsAsFactors=FALSE) #read text file

     df$Time <- strptime(paste(df$Date,df$Time), "%d/%m/%Y %H:%M:%S")  # Add formated Date/Time for X axis

     df$Date <- as.Date(df$Date, format = "%d/%m/%Y")  # Create Subset

     td <- df[df$Date >= "2007-02-01" & df$Date <= "2007-02-02", ]

     plot(td$Time,td$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l") #Plot first line (x,y)
     lines(td$Time,td$Sub_metering_3,type="l",col="Blue") # Add second line
     lines(td$Time,td$Sub_metering_2,type="l",col="Red")  # Add third line

     legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), lwd=c(2.5,2.5,2.5),col=c("Black","blue","red")) # Add Legend Box
 
     png("plot3.png",width=480,height=480,res=120)#Plot3 to File

     plot(td$Time,td$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l") #Plot first line (x,y)
     lines(td$Time,td$Sub_metering_3,type="l",col="Blue") # Add second line
     lines(td$Time,td$Sub_metering_2,type="l",col="Red")  # Add third line

     legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), lwd=c(2.5,2.5,2.5),col=c("Black","blue","red")) # Add Legend Box
     dev.off()
}
