#Getting information about current working directory
getwd()
#Settng working directory
setwd("D:/RGreatlearning/")
#Loading dataset into R
mydata <- read.csv("InternetMobileTime .csv",header = TRUE)
#Viewing data
View(mydata)
#Attaching the loaded dataset
attach(mydata)
#Hypothesis formulation
#Null Hypothesis : H0 : Mu = 144
#Alternate Hypothesis : H1 : Mu != 144
#Computing Xbar
Xbar <- mean(Minutes)
#Computing standadr deviation
S <- sd(Minutes)
#Mu
Mu = 144
#COmputing t-stats
tstats <- (Xbar - Mu)/(S/sqrt(30))
#viewing value of tstats
tstats
#Since p-value is greater than alpha, we have to accept Null hypothesis