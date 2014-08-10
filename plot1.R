plot1 <- function(){

        plotdata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", nrows= 1000000, stringsAsFactors=FALSE,  as.is=TRUE) #Read txt file

        plotdata$Date <- as.Date(plotdata$Date, format = "%d/%m/%Y") # reformat date

        tdate <- plotdata[plotdata$Date >= "2007-02-01" & plotdata$Date <= "2007-02-02", ] #subset date range

        hist(tdate$Global_active_power,main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red") # Plot1

        png("plot1.png",width=480,height=480,res=120)
        hist(tdate$Global_active_power,main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red") # Plot1 to file
        dev.off()
}

