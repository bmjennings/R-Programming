complete <- function(directory, id = 1:332)
{
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
		
		workingDir <- getwd()
		setwd(paste(workingDir,"/",directory,sep=""))
		
		# Initialize the meanData variable
		output <- data.frame()
		
		count <- 1

		# Read in each data set that is passed in as an argument
		for (i in id)
		{
			# read in the required data
			fileName <- paste("00", i, sep="")
			fileName <- substr(fileName, nchar(fileName)-2, nchar(fileName))
			data <- read.csv(paste(fileName, ".csv", sep=""))

			# determine the number of completely observed cases for each file
			temp <- subset(data,!(is.na(nitrate) | is.na(sulfate)))			
			
			# Store the required information in a new data.frame
			output[count, "id"] <- i
			output[count, "nobs"] <- nrow(temp)
			
			count <- count + 1
		}

		setwd(workingDir)

		output <- output
}