#Gettiing information about current working directory
getwd()
#Setting working directory
setwd("C:/Project 2021/")
#Installting the necessary packages
install.packages("rpart")
#Using the installed package
library(rpart)
##Loading dataset into R
CART <- read.csv("Position_Salaries.csv")
#Selectiing only 2nd and 3rd columns in the dataset
CART <-  CART[2:3]
#Viewing the loaded dataset
CART
#Attachiing the loaded dataset
attach(CART)
#Creating model
regressor <- rpart(formula = Salary~.,data=CART,control = rpart.control(minsplit = 1) )
#Predicting a new result for provided value of level
y_pred <- predict(regressor,data.frame(Level = 6.5))
#Constructing actual graph
x_grid = seq(min(CART$Level),max(CART$Level),0.1)
ggplot() +
  geom_point(aes(x = Level,y = Salary),
             colour = "red") +
  geom_line(aes(x = Level,y=predict(regressor,newdata = CART)),
            colour = "blue") +
  ggtitle("Truth or Bluff(Decision Tree Regression)") +
  xlab("Level") +
  ylab("Salary")
