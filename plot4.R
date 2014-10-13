## ============================================================================
# Load the package
## setwd("C:\\courseraworkspace\\exdata\\ExData_Plotting1")
## ============================================================================
library(sqldf)

source("plot1.R")

## ============================================================================
## This function plots the line graphic.
## ============================================================================
plot4 <- function() {
        r <-- readDatasets()
                
        png(file=".\\plot4.png")

        par(mfrow = c(2, 2))
        
        ## Plot 4.1
        with(subset(dsHPC, Global_active_power != '?'), plot(dateTime, as.numeric(paste(Global_active_power)), type ="l", xlab="", ylab="Global Active Power (killowatts)"))
        
        ## Plot 4.2
        with(subset(dsHPC, Voltage != '?'), plot(dateTime, as.numeric(paste(Voltage)), type ="l", xlab="datetime", ylab="Voltage", col='black'), axes=FALSE)
        
        ## Plot 4.3
        with(subset(dsHPC, Sub_metering_1 != '?'), plot(dateTime, as.numeric(paste(Sub_metering_1)), type ="l", xlab="", ylab="Energy sub metering", col='black'))
        with(subset(dsHPC, Sub_metering_2 != '?'), lines(dateTime, as.numeric(paste(Sub_metering_2)), type ="l", xlab="", ylab="Energy sub metering", col='red'))
        with(subset(dsHPC, Sub_metering_3 != '?'), lines(dateTime, as.numeric(paste(Sub_metering_3)), type ="l", xlab="", ylab="Energy sub metering", col='blue'))
        legend("topright", pch = "__", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
                
        ## Plot 4.4
        with(subset(dsHPC, Global_reactive_power != '?'), plot(dateTime, as.numeric(paste(Global_reactive_power)), type ="l", xlab="datetime", ylab="Global_reactive_power", col='black'))
        
        
        ## dev.copy(png, file=".\\plot4.png")
        
        dev.off()
        
}
