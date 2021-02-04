#Defining input
N <- 10000

#Defining counter variable
counter <- 0

#Creating for loop
for(i in rnorm(N)){
  if(i > -1 & i < 1){
    counter <- counter + 1
  }
}

#Printing Proportion
counter/N
