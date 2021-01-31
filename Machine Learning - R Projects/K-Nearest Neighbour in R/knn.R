#Gettng info about current working directory
getwd()
#Setting current working directory
setwd("C:/Project 2021/")
#Importing dataset into R
KNN <- read.csv("Social_Network_Ads.csv")
#Viewing the loaded dataset
View(KNN)
#Selecting only 3 to 5 columns of the dataframe
KNN <- KNN[3:5]
#Attaching the loaded dataset
attach(KNN)
#Using library caTools
library(caTools)
#Using library ElemStatLearn
library(ElemStatLearn)
#Splitting data into training and testing datasets
set.seed(123)
split <- sample.split(Purchased,SplitRatio = 0.75)
#Creating training dataset
training_set <- subset(KNN,split == TRUE)
#Creating testing dataset
testing_set <- subset(KNN,split == FALSE)
#Performing feature scaliing on Age and estimated salary columns
training_set[,1:2] <- scale(training_set[,1:2])
testing_set[,1:2] <- scale(testing_set[,1:2])
#Using class library
library(class)
#Creatiing logistic Regression model and predicting test set resuts
y_pred <- knn(train = training_set[,-3],
              test = testing_set[,-3],
              cl = training_set[,3],
              k = 5) 
#Viewiing the constructed KNN model
y_pred
#Creating confusion matrix
cm <- table(testing_set[,3],y_pred)
#Viewiing confusion matrix
cm
#Visualising training set result
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = knn(train = training_set[,-3],
             test = testing_set[,-3],
             cl = training_set[,3],
             k = 5)
plot(set[, -3],
     main = 'KNN (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
# Visualising the Test set results
set = testing_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = knn(train = training_set[,-3],
             test = testing_set[,-3],
             cl = training_set[,3],
             k = 5)
plot(set[, -3],
     main = 'KNN (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))