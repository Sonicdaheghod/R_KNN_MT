#improvements: better visualize dataset
# model validation


#Code source reference: https://youtu.be/5bA0m1OowdU?feature=shared
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

## number of items for test and train
dim(the_train)
dim(the_test)

## the model will use the train  dataset ( GNP.deflator     GNP Unemployed Armed.Forces Population Year)
## to predict number of people employed

##4- Model Creation

### lm is function for linear regression

##a) train model with training dataset
myTrainModel = lm(Employed~GNP.deflator+Unemployed+Armed.Forces+Population,data=the_train)
summary(myTrainModel)

##b) Model prediction
my_prediction = predict(myTrainModel, the_test)
summary(my_prediction)
View(my_prediction)

##5- Peformance of Model
#https://machinelearningmastery.com/regression-metrics-for-machine-learning/

###a) Prediction vs Actual
compare_df = data.frame(cbind(Actual = the_test$Employed, Predicted = my_prediction))
View(compare_df)

###b) Root Mean Squared Error
## this measures the error between predicted and actual values

##viewing all avaliable packages with "metrics"
available_packages <- available.packages()
metrics_packages <- grep("metrics", available_packages[, "Package"], value = TRUE)
print(metrics_packages)

##install MLmetrics to R
install.packages("MLmetrics")
library(MLmetrics)

##running RMSE
rmse_value <- RMSE(the_test$Employed, my_prediction)
print(rmse_value)

###c) Mean absolute error
mae_value <- mean(abs(the_test$Employed - my_prediction), na.rm = TRUE)
