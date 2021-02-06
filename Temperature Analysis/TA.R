#Getting information about current working directory
getwd()

#Setting current working directory
setwd("./P3-Weather-Data/")

#Loading dataset into R
chicago <- read.csv("Chicago-F.csv",row.names = 1)
newyork <- read.csv("NewYork-F.csv",row.names = 1)
houston <- read.csv("Houston-F.csv",row.names = 1)
sanfrancisco <- read.csv("SanFrancisco-F.csv",row.names = 1)

#Checking dataframes
#Chicago
chicago
#Newyork
newyork
#Houston
houston
#SanFrancisco
sanfrancisco

#Converting into matrices
chicago <- as.matrix(chicago)
newyork <- as.matrix(newyork)
houston <- as.matrix(houston)
sanfrancisco <- as.matrix(sanfrancisco)

#Creating list
Weather <- list(chicago=chicago,newyork=newyork,houston=houston,sanfrancisco=sanfrancisco)
Weather

#Computing min,max,mean for rows in chicago
apply(chicago,1,mean)
apply(chicago,1,min)
apply(chicago,1,max)

apply(chicago,2,mean)

#Comparisons
apply(chicago,1,mean)
apply(newyork,1,mean)
apply(houston,1,mean)
apply(sanfrancisco,1,mean)

#Applying transpose at matrix level
mynewlist <- lapply(Weather,t)