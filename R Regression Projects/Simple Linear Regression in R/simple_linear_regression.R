#Getting Current Workiing directory
getwd()
#Setting working directory
setwd("C:/Project 2021")
#Loading dataset into R
DF <- read.csv("Salary_Data.csv")
#Viewing the loaded dataset
DF
#Splitting data into training and testing dataset
#Setting seed value
set.seed(124)
#Splitting
split <- sample.split(DF$Salary,SplitRatio = 2/3)
#Creating training dataset
training_dataset <- subset(DF,split == TRUE)
#Creating testing dataset
testing_dataset <-  subset(DF,split == FALSE)
#Viewing training and testing dataset
training_dataset
testing_dataset
#Performing simple linear regression
regressor = lm(formula = Salary ~ YearsExperience,
               data = training_set)
#Getting summar of the constructed linear model
summary(regressor)
#Plotting linear model
plot(regressor)
#Performing prediction using test dataset
y_pred = predict(regressor, newdata = test_set)
y_pred
#Visualising graphically results og training and testing datasets
#installing ggplot2 package
install.packages("ggplot2")
#using ggplot2
library(ggplot2)
#Creating graphs for training datasets
ggplot() +
  geom_point(aes(x = training_set$YearsExperience, y = training_set$Salary),
             colour = 'red') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('Salary vs Experience (Training set)') +
  xlab('Years of experience') +
  ylab('Salary')
##Creating graphs for testing datasets
ggplot() +
  geom_point(aes(x = test_set$YearsExperience, y = test_set$Salary),
             colour = 'red') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('Salary vs Experience (Test set)') +
  xlab('Years of experience') +
  ylab('Salary')
# rlang::last_error()
