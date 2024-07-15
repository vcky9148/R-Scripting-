# Install necessary packages (if not already installed)
install.packages("caret")
install.packages("e1071")

# Load necessary libraries
library(caret)
library(e1071)

# Load the mtcars dataset
data<-read.csv("mtcars.csv")

# Load necessary libraries
library(caret)
library(e1071)

# Load the mtcars dataset
data(mtcars)

# View the structure and summary of the dataset
str(mtcars)
summary(mtcars)

# Check for missing values in the dataset
sum(is.na(mtcars))

# Set a seed for reproducibility
set.seed(123)

# Create a partition index
index <- createDataPartition(mtcars$mpg, p = 0.7, list = FALSE)

# Split the data into training (70%) and testing (30%) sets
training_set <- mtcars[index, ]
testing_set <- mtcars[-index, ]

# Build a multiple regression model
regression_model <- lm(mpg ~ wt + hp + cyl, data = training_set)

# Summarize the model
summary(regression_model)

# Make predictions on the test set
predictions <- predict(regression_model, newdata = testing_set)

# Calculate Mean Squared Error (MSE) and Root Mean Squared Error (RMSE)
mse <- mean((predictions - testing_set$mpg)^2)
rmse <- sqrt(mse)

# Print the evaluation metrics
cat("Mean Squared Error (MSE):", mse, "\n")
cat("Root Mean Squared Error (RMSE):", rmse, "\n")

# Print R-squared value
r_squared <- summary(regression_model)$r.squared
cat("R-squared:", r_squared, "\n")
")

# View the structure and summary of the dataset
str(mtcars)
summary(mtcars)

# Check for missing values in the dataset
sum(is.na(mtcars))

# Set a seed for reproducibility
set.seed(123)

# Create a partition index
index <- createDataPartition(mtcars$mpg, p = 0.7, list = FALSE)

# Split the data into training (70%) and testing (30%) sets
training_set <- mtcars[index, ]
testing_set <- mtcars[-index, ]

# Build a linear regression model
regression_model <- lm(mpg ~ wt, data = training_set)

# Summarize the model
summary(regression_model)

# Make predictions on the test set
predictions <- predict(regression_model, newdata = testing_set)

# Calculate evaluation metrics
mae <- mean(abs(predictions - testing_set$mpg))
mse <- mean((predictions - testing_set$mpg)^2)
rmse <- sqrt(mse)

# Print the evaluation metrics
cat("Mean Absolute Error (MAE):", mae, "\n")
cat("Mean Squared Error (MSE):", mse, "\n")
cat("Root Mean Squared Error (RMSE):", rmse, "\n")
