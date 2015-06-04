pollutantmean <- function(directory, pollutant, id = 1:332)
{
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
		workingDir <- getwd()
		setwd(paste(workingDir,"/",directory,sep=""))
		
		# Initialize the meanData variable
		temp <- c()

        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".
		for (i in id)
		{
			# read in the required data
			fileName <- paste("00", i, sep="")
			fileName <- substr(fileName, nchar(fileName)-2, nchar(fileName))
			data <- read.csv(paste(fileName, ".csv", sep=""))

			# calculate the mean for this data set
			temp <- c(temp,data[,pollutant])
		}

		setwd(workingDir)
		
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)		
		
		meanEnd <- mean(temp,na.rm=TRUE)
		meanEnd <- round(meanEnd, 3)	

}