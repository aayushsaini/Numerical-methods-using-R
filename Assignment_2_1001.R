#Assignment 2

library(moments)

data <- read.csv("~/Downloads/DataSet2.csv")   #Replace the address string with your location of the file

sprintf("Mean val for the 2nd Col: %s", mean(data$time))
sprintf("Variance for the 3rd Col: %s", var(data$status))
sprintf("Skewness for the 4th Col: %s", skewness(data$age))
sprintf("Kurtosis for the 5th Col: %s", kurtosis(data$thickness))
