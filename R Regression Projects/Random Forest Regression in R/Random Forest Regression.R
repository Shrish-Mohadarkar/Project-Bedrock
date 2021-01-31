#Gettiing information about current working directory
getwd()
#Setting working directory
setwd("C:/Project 2021/")
#Installting the necessary packages
install.packages("randomForest")
#Using the installed package
library(randomForest)
library(ggplot2)
##Loading dataset into R
RF <- read.csv("Position_Salaries.csv")
#Selectiing only 2nd and 3rd columns in the dataset
RF <-  RF[2:3]
#Viewing the loaded dataset
RF
#Attachiing the loaded dataset
attach(RF)
#Creating model
set.seed(1234)
regressor <- randomForest(x = RF[1],
                          y = Salary,
                          ntree = 500)
#Predicting a new result for provided value of level
y_pred <- predict(regressor,data.frame(Level = 6.5))
#Constructing actual graph
x_grid = seq(min(RF$Level),max(RF$Level),0.01)
ggplot() +
  geom_point(aes(x = Level,y = Salary),
             colour = "red") +
  geom_line(aes(x = Level,y=predict(regressor,newdata = RF)),
            colour = "blue") +
  ggtitle("Truth or Bluff(Random Forest Regression)") +
  xlab("Level") +
  ylab("Salary")
