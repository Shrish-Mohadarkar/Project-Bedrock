#getting information about current working directory
getwd()
#Setting working directory
setwd("D:/RGreatlearning/")
#Loading dataset into R
mydata <- read.csv("CardioGoodFitness.csv",header = TRUE)
#Viewing the loaded dataset
View(mydata)
#Attaching the loaded dataset
attach(mydata)
#Getting summary of the loaded dataset
summary(mydata)
#Converting product and marital status into factors
mydata$Product <- as.factor(mydata$Product)
mydata$MaritalStatus <- as.factor(mydata$MaritalStatus)
#Getting summary after conversion
summary(mydata)
#Getting summary by Product
by(mydata,INDICES = Product,FUN = summary)
#Getting summary by Gender
by(mydata,INDICES = Gender,FUN = summary)
#Getting summary by MaritalStatus
by(mydata,INDICES = MaritalStatus,FUN = summary)
#Creating Histogram for Age
hist(Age,col = "red")
#Creating boxplot for Age
boxplot(Age,col = "red",horizontal = TRUE,main="Boxplot for Age")
#Boxplot where Age~Gender
boxplot(Age~Gender,col = c("red","blue"),horizontal = TRUE,main="Boxplot where Age ~ Gender")
#Creating Cross table for Product and Gender
table(Product,Gender)
#Creating Cross table for Product and MaritalStatus
table(Product,MaritalStatus)
#Creating rpivotTable
#using library rpivotTable
library(rpivotTable)
#Creating rpivotTable for loaded dataset
rpivotTable(mydata)
#Computing Standard Deviation of the Age
sd(Age)
#Using library lattice
library(lattice)
#Creating histogram for miles clocked where miles is a function of gender
histogram(~Miles | Gender,data=mydata)
#Creating histogram for miles clocked where miles is a function of product
histogram(~Miles | Product,data=mydata)
#COmputing correlation between miles and usages
cor(Miles,Usage)
#Creating linear model
model <- lm(Miles~Usage,data=mydata)
