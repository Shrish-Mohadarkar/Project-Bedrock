###Data Analysis-Cold Storage Case Study#########
##Installing the necessary packages
install.packages("readr")
install.packages("ggplot2")
install.packages("outliers")
install.packages("EnvStats")

##using the installed libraries
library(readr)
library(ggplot2)
library(outliers)
library(EnvStats)

##Getting infor about current working directory
getwd()

##Setting the working directory
setwd("D:/RGreatLearning")

##loading the dataset into R
ColdStorage = read_csv("K2_Cold_Storage_Temp_Data (1).csv")
COldStorage_2018 = read_csv("K2_Cold_Storage_Mar2018.csv")

##Viewing the loaded dataset
View(ColdStorage)
View(COldStorage_2018)

##Checking the structure of the loaded dataset
str(ColdStorage)
str(COldStorage_2018)

##Checking the summary of the loaded dataset
summary(ColdStorage)
summary(COldStorage_2018)
##Converting the datatype of season and Month into Factors
ColdStorage$Season = as.factor(ColdStorage$Season)
ColdStorage$Month = as.factor(ColdStorage$Month)
COldStorage_2018$Season = as.factor(COldStorage_2018$Season)
COldStorage_2018$Month = as.factor(COldStorage_2018$Month)
##Checking for presence of NA values
anyNA(ColdStorage)
anyNA(COldStorage_2018)
##Attaching the loaded datasets
attach(ColdStorage)
attach(COldStorage_2018)
##Checking the datatype of ColStorage variable
class(ColdStorage)
class(COldStorage_2018)
##Checking dimensions of the loaded dataset
dim(ColdStorage)
dim(COldStorage_2018)
##Getting column names in the loaded dataset
colnames(ColdStorage)
colnames(COldStorage_2018)
##Computing Mean cold storage temperature for summer, witer and rainy season
aggregate(Temperature~Season,ColdStorage,mean)
##Computing the same using tapply function
tapply(Temperature,Season,mean)
##Calculating mean for full year
mean(Temperature)
##Calculating standard deviation for Full year
sd(Temperature)
##Claculating variance for full year
var(Temperature)
##Calculating probability of temperature falling below 2 degree celcius
pnorm(2,mean=2.96274,sd=0.508589,lower.tail = TRUE)
##Calculating probability of temperature rising above 4 degree celcius
pnorm(4,mean = 2.96274,sd=0.508589,lower.tail = FALSE)
##Penalty Will be 10% of annual maintenance Case.

##usig the library ggplot2
library(ggplot2)
##plotting boxplot
boxplot(Temperature,horizantal = TRUE,col=c("Red"))
boxplot(Temperature~Season,col=c("Red","Green","Blue"))
##Finding max value in Temperature column of the loaded datasets
max(Temperature)
##installing the outliers package

##using the package outliers
library(outliers)
##computing outliers
outlier(Temperature)
##plotting histogram
hist(Temperature)
qplot(Month,Temperature,main="Month vs Tempearute",xlab="Month",ylab="Temperature")
##plotting boxplot again
boxplot(ColdStorage$Temperature)
boxplot(ColdStorage$Temperature)$out
outlier = boxplot(ColdStorage$Temperature,plot=FALSE)$out
print(outlier)
boxplot(ColdStorage$Temperature)
ColdStorage[which(Temperature %in% outlier),]
ColdStorage_new = ColdStorage[-which(Temperature %in% outlier),]
boxplot(ColdStorage_new$Temperature)
##Calculating mean
mean(ColdStorage_new$Temperature)
sd(ColdStorage_new$Temperature)
pnorm(2,mean=2.951515,sd=0.4868624,lower.tail = TRUE)
pnorm(4,mean = 2.951515,sd=0.4868624,lower.tail = FALSE)
##Detecting presence of outliers
.libPaths("C:/Program Files/R/R-3.6.0/library")
##Installing package EnvStats

##Using the library EnvStats
library(EnvStats)
##Performing rosners test for outlier detection
rosnerTest(Temperature,k=3,warn = F)
##Removing outliers from the dataset

##calculating t test

xbar = mean(Temperature)
xbar
Mu = 3.9
S =sd(Temperature)
S
n = 36
tstat = (xbar - Mu)/ (S/(n^0.5))
tstat
Pvalue = pt(tstat,35)
Pvalue
Pvalue = (1-pt(tstat,34))*2


Pvalue
##Since p value is greater than alpha null hypothesis is accepted

##Calculating Z test
xbar = mean(Temperature)
xbar
Mu = 3.9
Sigma = sd(Temperature)
Sigma
n = 36
zstat = (xbar - Mu)/ (Sigma / (n^0.5))
zstat
Pvalue = pt(zstat,35)
Pvalue
## SInce p value is greater than aplha Null hypothesis is accepted.
