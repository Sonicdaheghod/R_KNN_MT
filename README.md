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

3) Model Creation

4) Model Execution

5) Model Validation

## Improvements

* In additon to comparing the predicted value with the actual values for the number of people employed I used:
  
  - Different method to calculate Root Mean Squared Error
  - Mean absolute error

These further analyze the accuracy and quality of the output from the model. 

![image](https://github.com/Sonicdaheghod/R_LinearRegress_MT/assets/68253811/da541f99-5fde-454e-aca6-4ef02b47e938)

Predicted vs Actual Values


## Acknowledgements
* Tutorial by [Gronify](https://youtu.be/5bA0m1OowdU?feature=shared)
