## ============================================================================
# Load the package
## setwd("C:\\courseraworkspace\\exdata\\ExData_Plotting1")
## ============================================================================
library(sqldf)
source("plot1.R")


## ============================================================================
## This function plots the line graphic.
## ============================================================================
plot3 <- function() {
        
        par(mfrow = c(1, 1))

        png(file=".\\plot3.png")
                
        with(subset(dsHPC, Sub_metering_1 != '?'), plot(dateTime, as.numeric(Sub_metering_1), type ="l", xlab="", ylab="Energy sub metering", col='black'))
        with(subset(dsHPC, Sub_metering_2 != '?'), lines(dateTime, as.numeric(Sub_metering_2), type ="l", xlab="", ylab="Energy sub metering", col='red'))
        with(subset(dsHPC, Sub_metering_3 != '?'), lines(dateTime, as.numeric(Sub_metering_3), type ="l", xlab="", ylab="Energy sub metering", col='blue'))
        
        legend("topright", pch = "__", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
             
        dev.off()
        
}
