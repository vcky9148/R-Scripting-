# Install necessary packages (if not already installed)
install.packages("caret")
install.packages("e1071")
install.packages("randomForest")

# Load necessary libraries
library(caret)
library(e1071)
library(randomForest)

# Load the iris dataset
data(iris)

# View the structure and summary of the dataset
str(iris)
summary(iris)

# Set a seed for reproducibility
set.seed(123)

# Create a partition index
index <- createDataPartition(iris$Species, p = 0.7, list = FALSE)

# Split the data into training (70%) and testing (30%) sets
training_set <- iris[index, ]
testing_set <- iris[-index, ]

# Build the Random Forest classification model
rf_model <- randomForest(Species ~ ., data = training_set)

# Make predictions on the test set
predictions <- predict(rf_model, newdata = testing_set)

# Print the confusion matrix
confusion_matrix <- table(predictions, testing_set$Species)
print(confusion_matrix)

# Calculate accuracy
accuracy <- mean(predictions == testing_set$Species)
cat("Accuracy:", accuracy, "\n")
