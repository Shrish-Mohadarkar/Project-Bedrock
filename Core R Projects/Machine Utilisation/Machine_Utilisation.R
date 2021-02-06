#Getting inforation about current working directory
getwd()

#Seting current working directory
setwd("/home/shrish/DataScience")

#Loading dataset into R
UTIL <- read.csv("P3-Machine-Utilization.csv")

#Checking top rows in the dataset
head(UTIL,12)

#Checking summary of the datasets
summary(UTIL)

#Checking colnames of the dataset
colnames(UTIL)

#Creating new column named Utilisation
UTIL$utilisation <- 1 - UTIL$Percent.Idle

#Handling Date-time series in R
UTIL$PosixTime <- as.POSIXct(UTIL$Timestamp,format="%d/%m/%Y %H:%M")

#Constructing list
summary(UTIL)
RL1 <- UTIL[UTIL$Machine=="RL1",]
summary(RL1)
RL1$Machine <- factor(RL1$Machine)

UTIL_STATS_RL1 <- c(min(RL1$utilisation,na.rm = T),
                    mean(RL1$utilisation,na.rm = T),
                    max(RL1$utilisation,na.rm = T))

UTIL_STATS_RL1

UTIL_UNDER_90_FLAG <- length(which(RL1$utilisation < 0.90)) > 0
UTIL_UNDER_90_FLAG

list_RL1 <- list("RL1",UTIL_STATS_RL1,UTIL_UNDER_90_FLAG)
list_RL1

#Naming elemets of the list
names(list_RL1) <- c("Machine","stats","LowThreshold")
list_RL1

#Accessing elements of the list
list_RL1[1]
list_RL1[[1]]
list_RL1[2]
list_RL1[[2]]
list_RL1[[2]][3]

#Adding and deleting list componenets
list_RL1[4] <- "New Information"
list_RL1

#Removing elements of the list
list_RL1[4] <- NULL
list_RL1

#Adding element to the list
list_RL1$Data <- RL1
list_RL1
summary(list_RL1)
str(list_RL1)

#Using library ggplot2
install.packages("ggplot2")
library(ggplot2)
p <- ggplot(data = UTIL)
myplot <- p + geom_line(aes(x = PosixTime,y=utilisation,
                            colour=Machine),size=1.2) +
  facet_grid(Machine~.) +
  geom_hline(yintercept = .90,
             colour="Gray",size=1.2,
             linetype=3)

#Adding plot to the list
list_RL1$Plot <- myplot
list_RL1