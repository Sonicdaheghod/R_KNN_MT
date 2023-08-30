# Linear Regression of Employment Data 
By: Megan Tran
## Table of Contents
* [Purpose of Program](#Purpose-of-program)
* [Technologies](#technologies)
* [Setup](#setup)
* [Using the Program](#using-the-program)
* [Improvements](#Improvements)
* [Acknowledgements](#acknowledgements)
  
## Purpose of Program
This program was created to understand the basics behind linear regression and model validation in R. 

## Technologies
Languages/ Technologies used:

* R

* R 4.3.1
  
## Setup
Download the necessary libraries:

```
install.packages("caTools")
install.packages("MLmetrics")
```
Load the libraries in R terminal using:

```
library()
```


Import the dataset:

```
data(longley)
```
## Using the Program

1) Analyzing Dataset

* See dimensions of dataset
```
> dim(longley)
[1] 16  7
```


* See Statistical Description of data (Min and max values, 1st and 3rd Quartile, median)

```
> summary(longley)
  GNP.deflator         GNP          Unemployed     Armed.Forces  
 Min.   : 83.00   Min.   :234.3   Min.   :187.0   Min.   :145.6  
 1st Qu.: 94.53   1st Qu.:317.9   1st Qu.:234.8   1st Qu.:229.8  
 Median :100.60   Median :381.4   Median :314.4   Median :271.8  
 Mean   :101.68   Mean   :387.7   Mean   :319.3   Mean   :260.7  
 3rd Qu.:111.25   3rd Qu.:454.1   3rd Qu.:384.2   3rd Qu.:306.1  
 Max.   :116.90   Max.   :554.9   Max.   :480.6   Max.   :359.4  
   Population         Year         Employed    
 Min.   :107.6   Min.   :1947   Min.   :60.17  
 1st Qu.:111.8   1st Qu.:1951   1st Qu.:62.71  
 Median :116.8   Median :1954   Median :65.50  
 Mean   :117.4   Mean   :1954   Mean   :65.32  
 3rd Qu.:122.3   3rd Qu.:1958   3rd Qu.:68.29  
 Max.   :130.1   Max.   :1962   Max.   :70.55  
```

2) Prepare dataset for Regression Model

* Linear regression is a supervised model, so dataset was split into training and test dataset.
  - More datapoints for training so model can make accurate predictions

```
> ## number of items for test and train
> dim(the_train)
[1] 10  7
> dim(the_test)
[1] 6 7
```

3) Model Creation

* Train our model with the training dataset where it uses the variables ``` GNP.deflator+Unemployed+Armed.Forces+Population ``` to predict the number of people employed.
* Later test our model with test data

```
myTrainModel = lm(Employed~GNP.deflator+Unemployed+Armed.Forces+Population,data=the_train)
summary(myTrainModel)

##b) Model prediction
my_prediction = predict(myTrainModel, the_test)
summary(my_prediction)
View(my_prediction)
```

4) Model Validation

* Compared Predicted vs Actual Values
* Calculated Root Mean Squared Error (RMSE)

```
> rmse_value <- RMSE(the_test$Employed, my_prediction)
> print(rmse_value)
[1] 0.9130343
```
* Calculated Mean absolute error (MAE)
```
> mae_value <- mean(abs(the_test$Employed - my_prediction), na.rm = TRUE)
> print(mae_value)
[1] 0.7982896
```
## Improvements

* In additon to comparing the predicted value with the actual values for the number of people employed I used:
  
  - Different method to calculate Root Mean Squared Error
    
    Measures the standard deviation of the distances between the regression line and the predicted values.
  - Mean absolute error
    
    Measures the average absolute difference of the distance between the predicted and actual values.

These further analyze the accuracy and quality of the output from the model. 

Future directions include determining how to reduce the values for both RMSE and MAE since a high value means the model is not performing well.

![image](https://github.com/Sonicdaheghod/R_LinearRegress_MT/assets/68253811/da541f99-5fde-454e-aca6-4ef02b47e938)

Predicted vs Actual Values


## Acknowledgements
* Tutorial by [Gronify](https://youtu.be/5bA0m1OowdU?feature=shared)
