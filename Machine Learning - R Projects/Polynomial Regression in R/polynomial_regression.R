#Getting information about current working diretory
getwd()
#Setting the current working directory
setwd("C:/Project 2021/")
#Importing dataset into R
poly <- read.csv("Position_Salaries.csv")
#Viewing the loaded dataset
View(poly)
#Selecting only 2nd and 3rd column in the dataset
poly <- poly[2:3]
#Here we are not splitting data into training and testing dataset
#since it is very small
#Attaching the loaded dataset
attach(poly)
#Building Linear Regression model
lin_reg <-  lm(formula = Salary~.,data = poly)
#Checking summary of linear regression model
summary(lin_reg)
#Adding new column in the dataset
poly$Level2 <- poly$Level^2
poly$Level2 <- poly$Level^2
poly
#Building Polynomail Regression model
poly_reg <- lm(formula = Salary~.,data = poly)  
#Summary of the polynomail model
summary(poly_reg)
#Visualising Linear Regression Model Result
#Using ggplot package
library(ggplot2)
#plot for Linear Regression model
ggplot() +
  geom_point(aes(x = Level,y = Salary),
             colour = "red") +
  geom_line(aes(x = Level,y = predict(lin_reg,newdata = poly)),
            colour = "blue") +
  ggtitle("Truth or Bluff(Linear Regression)") +
  xlab("Level") +
  ylab("Salary")
#plot for Polynomial Regression model
ggplot() +
  geom_point(aes(x = Level,y = Salary),
             colour = "red") +
  geom_line(aes(x = Level,y = predict(poly_reg,newdata = poly)),
            colour = "blue") +
  ggtitle("Truth or Bluff(Polynomial Regression)") +
  xlab("Level") +
  ylab("Salary")
#Predicting by providiing actual input for polynomial Regression
y_pred <- predict(poly_reg,data.frame(Level = 6.5,
                                      Level2 = 6.5^2))
#Predictiing by providing actual input for Liinear Regression
y_pred <- predict(lin_reg,data.frame(Level = 6.5))
