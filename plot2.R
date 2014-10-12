## ============================================================================
# Load the package
## setwd("C:\\courseraworkspace\\exdata\\ExData_Plotting1")
## Sys.setlocale("LC_TIME", "English")
## ============================================================================
library(sqldf)
source("plot1.R")


## ============================================================================
## This function plots the line graphic.
## ============================================================================
plot2 <- function() {
        
        par(mfrow = c(1, 1))
        
        png(file=".\\plot2.png")
        
        with(subset(dsHPC, Global_active_power != '?'), plot(dateTime, as.numeric(Global_active_power), type ="l", xlab="", ylab="Global Active Power (killowatts)"))
                
        dev.off()
        
}

