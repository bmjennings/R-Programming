# R has five "atomic" classes of objects:
# 1 - character
# 2 - numeric (real numbers)
# 3 - integer
# 4 - complex
# 5 - logical (True and False)

# The most basic object is a vector
# a vector can only contain objects of the same class
# a list is represented as a vector, but can contain objects of different classes (that's why we use them)

# Empty vectors can be created with the 'vector()' function

# vector() - 2 arguments, the class and the length

# R objects have attributes
# names and dimension names
# dimensions (e.g. matrices, arrays)
# class
# length
# other user-defined attributes / metadata

# Access attributes of an object using the attributes() function

# Concatenate -> c(), can coerce different objects into the same class
y <- c(TRUE, 2) # TRUE will be converted into a number (the number 1), will get (1,2)
y <- c("a", TRUE) # TRUE will be turned into a string

# Create a matrix
m <- matrix(nrow = #, ncol = #)

# Matrices are created columnwise - all rows are filled, then moves to the next column...

# Factors - ordered vector, treated specially by modelling functions such as lm() and glm()
# to explicitly tell R that the levels, use the levels = c() as an argument to the factor() function

# Missing Values - is.na() - used to test objects if they are NA
# is.nan() - used to teest for NAN

# Data Frame - key data type used to store tabular data
# Special type of list - each element has the same number, each column doesn't have to be the same type
# Matrices store all the same type, each column of a data frame can be different, however
# Data frame can be converted to a matrix - if you coerce into a matrix, you may get something you didn't intend

# Names - all R objects can have names
# names() function tells you what is associated with each element of a vector or list
# dimnames() function used for matrices - dimnames(row names, col names)

# Primary functions to read in data to R
# read.table(), read.csv() for reading tabular data
# readLines() for reading lines of a text file
# source()) - R code files
# dget() - R code files
# load() - saved workspaces
# unserialize() - single R objects in binary form

# Primary functions for writing in R (analogous to reading functions)
# write.table()
# writeLines()
# dump()
# dput()
# save()
# serialize()

# read.table(file, hehader, sep,colClasses, nrows, comment.char, skip, stringsAsFactors)
# all important arguments -^
# can use read.table() with only the name of the file - it's pretty smart
# data <- read.table("foo.txt") for example, read.csv comma, table is space

# Reading in large data sets - read the help table for read.table() - should memorize it, actually
# How to optimize read.table() - make a rough calculation of how much memory you need
# do you have enough RAM on your computer?
# colClasses argument is very important - fi you can tell R what type of data
# it doesn't need to spend time trying to figure it out. If you can tell R how
## many rows you will read in, it will help with allocating memory

# Know your system - other users? Mac, Windows? 32 bit or 64 bit?
# Determine how much memory is going to be needed if you're dealing with a large data set

# Textual data format - dump() and dput() output is editable
# dput takes an arbitray data frame and constructs R code
## dput to write, dget to read
# dump can be used on multiple objects, dput only 1 object

# Interfaces to the Outside World
# the connection interface absracts out the details of interfacing to outside sources

# Subsetting R Objects: number of operators
# [ - always returns the same class as the original, can be used to extract more than one element
# [[ - returns only a single element of the list or a data frame
# $ - extract elements of list or data frame that have names
# can use logical index x[]

# Subsetting Lists - x <- list(foo = 1:4, bar = 0.6)

# Subsetting Matrices - look at the "drop" argument
# Subsetting with Partial Matching - to do partial matching use the argument exact=FALSE
