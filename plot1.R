## ============================================================================
# Load the package
## ============================================================================
library(sqldf)


## ============================================================================
## This function reads the dataset file
## ============================================================================
readDatasets <- function() {
        
        r    <- FALSE
        
        ## Verifies if the dataset has already been read.
        if(!exists("dsHPCComplete")) {
                
                dsHPCComplete   <<- read.csv2(".\\data\\household_power_consumption.txt")
                
        }
        
        ## Verifies if the dataset has already been read and then filters the rows 1/2/2014 and 2/2/2014.
        if(!exists("dsHPC")) {
        
                dsHPC           <<- sqldf("select *
                                  from    dsHPCComplete
                                  where   Date in ('1/2/2007','2/2/2007')")
                dateTime <<- paste(dsHPC$Date, dsHPC$Time)
        
                dateTime <<- strptime(dateTime, "%d/%m/%Y %H:%M:%S")
        
                dsHPC <<- cbind(dsHPC, dateTime)
        
        }

        r <- TRUE
        
        return(r)
}

## ============================================================================
## This function plots the histogram.
## ============================================================================
plot1 <- function() {
        
        ## Read the dataset
        r <-- readDatasets()
        
        par(mfrow = c(1, 1))
        
        png(file=".\\plot1.png")
        
        with(subset(dsHPC, Global_active_power != '?'), hist(as.numeric(paste(dsHPC$Global_active_power)), xlab="Global Active Power (killowatts)", col = "red", main="Global Active Power"))
        
        dev.off()
}
