corr <- function(directory, threshold = 0)
{
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
		test <- complete("specdata", 1:332)
		dataSet <- subset(test, nobs > threshold)
		iterator <- dataSet[,"id"]

        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
		
		workingDir = getwd()
		setwd(paste(workingDir,"/",directory,sep=""))
		
		corVec <- numeric()
		
		for(i in iterator)
		{
			# read in the required data
			fileName <- paste("00", i, sep="")
			fileName <- substr(fileName, nchar(fileName)-2, nchar(fileName))
			data <- read.csv(paste(fileName, ".csv", sep=""))
			
			corVec <- c(corVec, cor(data$sulfate,data$nitrate, use="complete.obs")) 
		}

		setwd(workingDir)
		
        ## Return a numeric vector of correlations
		corVec <- corVec
}