#Code source reference: https://www.youtube.com/watch?v=5bA0m1OowdU&list=PLXCw5VdOQb7iN847MZzb2uvDALI3U5z05&index=1&ab_channel=Gronify
#Gronify - Linear Regression Machine Learning Model in R | Practical Implementation of Linear regression model

#1- load dataset

data(longley)

#2 - Analyze dataset

## print dimensions

dim(longley)

## print first few data points
head(longley)

## print out column names
ls(longley)

##summary of dataset
summary(longley)

#3 - Prepare dataset for Linear Regression Model

##load appropriate library

###caTools - https://cran.r-project.org/web/packages/caTools/index.html
### install.packages("caTools")

library('caTools')

##generation random outputs
set.seed(42)

##split test and train data
mySample = sample.split(longley, SplitRatio = .8)
the_train = subset(longley, mySample==TRUE)
head(the_train)
str(the_train)
the_test = subset(longley, mySample==FALSE)
str(the_test)

## the model will use the train  dataset ( GNP.deflator     GNP Unemployed Armed.Forces Population Year)
## to predict number of people employed

##4- Model Creation