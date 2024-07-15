# Install necessary packages (if not already installed)
install.packages("caret")
install.packages("e1071")
install.packages("rpart")

# Load necessary libraries
library(caret)
library(e1071)
library(rpart)

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

# Build a Decision Tree classification model
decision_tree_model <- rpart(Species ~ ., data = training_set, method = "class")

# Make predictions on the test set
predictions <- predict(decision_tree_model, newdata = testing_set, type = "class")

# Evaluate the model
confusion_matrix <- confusionMatrix(predictions, testing_set$Species)
print(confusion_matrix)
