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
