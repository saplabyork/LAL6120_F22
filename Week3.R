
#Try out some fun stuff

2+2 #If you put a hashtag in front of your script, it "comments" it out (i.e., it won't operate over the comment)

3*2 #multiply
2^9 #exponents

(8+9)* 5 #operations

#The general structure of an R function is:
# function(arg1, arg2, ...)

#There are many built-in mathematical functions in R

sqrt(81) 

# You can assign variables to the output of a function

x <- (8+9) * sqrt(81)
x

# The command ls() will list all of the objects in your environment

ls()

# Let's read in some data. But first let's see what your working directory is.

getwd()

#make sure the data you want to read in is in the working directory.

tam <- read.csv(tam, header=TRUE)

#this should put the object "tam" in your environment

head(tam)
tail(tam)

#Introducing Tidyverse package --> a modern way of doing R, meant to make everything tidier than Base R.

install.packages('tidyverse')
library(tidyverse)

tam <- as_tibble(tam)
