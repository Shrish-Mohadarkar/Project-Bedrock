#Getting information about current working directory
getwd()
#Settiing the current workiing directory
setwd("C:/Project 2021/")
#Loading dataset into R
ANN_data <- read.csv("Churn_Modelling.csv")
ANN_data <- ANN_data[4:14]
#Viewing the loaded datsets
View(ANN_data)
#Encoding categorical data
#Encoding Geography column
ANN_data$Geography <- as.numeric(factor(ANN_data$Geography,
                             levels = c("France","Spain","Germany"),
                             labels = c(1,2,3)))
#Encoding Gender column
ANN_data$Gender <- as.numeric(factor(ANN_data$Gender,
                                        levels = c("Female","Male"),
                                        labels = c(1,2)))
#Splitting dataset into training and testing dataset
#Using necessary library
library(caTools)
#Setting seed value
set.seed(123)
#Defining split
split <- sample.split(ANN_data$Exited,SplitRatio = 0.8)
#Creating training dataset
training_dataset <- subset(ANN_data,split == TRUE)
#Creating testing dataset
testing_dataset <- subset(ANN_data,split == FALSE)
#Performing feature scaling on both training and testing dataset
training_dataset[-11] <- scale(training_dataset[-11])
testing_dataset[-11] <- scale(testing_dataset[-11])
#installing package h20
install.packages("h2o")
#Using the installed packages
library(h2o)
#using init method to connecto to h2o instance
h2o.init(nthreads = -1)
#Building ANN
classifier <- h2o.deeplearning(y = "Exited",
                               training_frame = as.h2o(training_dataset),
                               activation = "Rectifier",
                               hidden = c(6,6),
                               epochs = 100,
                               train_samples_per_iteration = -2)
#Predicting results on test dataset
y_pred <- h2o.predict(classifier,newdata = as.h2o(testing_dataset[-11]))
#converting probabilities into 0 and 1
logPred <- ifelse(y_pred > 0.5,1,0)
#COnvertiing vector
logPred <- as.vector(logPred)
logPred
#Creating confusion matrix
cm <- table(testing_dataset[,11],logPred)
cm
#Shutting down h20 instance
h2o.shutdown()
