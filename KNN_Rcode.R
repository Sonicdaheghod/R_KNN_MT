#set working directory to where you saved csv file using setwd()

# 1) Load dataset

filename <- "wine.csv"

# 2) Load file from directory
dataset <- read.csv(filename, header=FALSE)

# 3) print dataset
head(data, n=5)