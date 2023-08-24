#set working directory to where you saved csv file using setwd()
getwd()
setwd("C:/Users/Megan Tran/Downloads")
# 1) Load dataset

filename <- "wine.csv"

# 2) Load file from directory
dataset <- read.csv(filename, header=FALSE)

# 3) print dataset
head(dataset, n=5)

## 3a) Statistical summary of dataset
summary(dataset)

# 4) Univariate plots

## 4a) Split input and output
x <- dataset[,1:4]
y <- dataset[,5]

## 4b) form a boxplot

par(mfrow=c(1,4))
  for(i in 1:4) {
  boxplot(x[,i], main=names(dataset)[i])
}



















