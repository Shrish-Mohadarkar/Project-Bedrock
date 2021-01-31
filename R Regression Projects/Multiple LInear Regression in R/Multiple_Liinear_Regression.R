#Checking current working directory
getwd()
#Setting the working directory
setwd("C:/Project 2021/")
#Importing dataset into R
Multi <- read.csv("50_Startups.csv")
#Viewiing the loaded datasets
View(Multi)
#Attaching the loaded dataset
attach(Multi)
#Encoding categorical variable State
Multi$State <- factor(Multi$State,levels = c("New York","California","Florida"),
                      labels = c(1,2,3))
#Splitting data iinto training and testing dataset
library(caTools)
#Creating split
split <- sample.split(Multi$Profit,SplitRatio = 0.8)
training_set <- subset(Multi,split == TRUE)
testing_set <- subset(Multi,split == FALSE)
#Viewing training and testing dataset
View(training_set)
View(testing_set)
#Creating multiple linear regression model
regressor <- lm(formula = Profit ~ .,data = training_set)
#Viewing summary of the constructed model
summary(regressor)
#Prediction using predict() function
y_pred <- predict(regressor,newdata = testing_set)
#Viewiing y_pred
y_pred
#Summary
summary(y_pred)
