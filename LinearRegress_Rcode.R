#set working directory to where you saved csv file using setwd()
library(caret)
getwd()
setwd("C:/Users/Megan Tran/Downloads")
# 1) Load dataset

filename <- "abalone.data"

# 2) Load file from directory
dataset <- read.csv(filename, header=FALSE)

# 3) print dataset
head(dataset)
head(dataset, n=5)

## 3a) Statistical summary of dataset
summary(dataset)

#4) Visualize dataset

##4a) split input and output

x <- dataset[,2:5]
y <- dataset[,9]

## 4b) boxplot for each attribute
par(mfrow=c(2,5))
	for(i in 2:5) {
	boxplot(x[,i], main=names(dataset)[i])
}

## 4c) scatter plot of various ages of alabone trees

plot(y)

#5) Utilizing KNN model
##5a) Build model

##variables

control <- trainControl(method="cv", number=8)
metric <- "RMSE"

#randomizer for samples (8/23, using lm model for regression data)
set.seed(5)
fit.lm <- train(V9~., data=dataset, method="lm",metric=metric, trControl=control)

##results
results <- resamples(list(lm=fit.lm))
summary(results)













