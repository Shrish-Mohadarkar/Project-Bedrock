#Getting information about current working directory
getwd()
#Setting working directory
setwd("C:/Project 2021/")
#Installing the needed package for SVM
install.packages("e1071")
#Using the installed packages
library(e1071)
#Loading dataset into R
SVR_data <- read.csv("Position_Salaries.csv")
#Viewing the loaded dataset
View(SVR_data)
#Readjustig the dataframe to elimnate postion columns
SVR_data <- SVR_data[,2:3]
#Attaching the loaded dataset
attach(SVR_data)
#Creating SVR model
regressor <- svm(formula = Salary ~.,data=SVR_data,
                 type="eps-regression")
#Predicting a new result for provided value of level
y_pred <- predict(regressor,data.frame(Level = 6.5))
#Visualisation using ggplot2
#using library ggplot2
library(ggplot2)
#Constructing actual graph
ggplot() +
  geom_point(aes(x = Level,y = Salary),
             colour = "red") +
  geom_line(aes(x = Level,y=predict(regressor,newdata = SVR_data)),
            colour = "blue") +
  ggtitle("Truth or Bluff(SVR)") +
  xlab("Level") +
  ylab("Salary")
