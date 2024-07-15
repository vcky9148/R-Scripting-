# Install necessary packages (if not already installed)
install.packages("caret")
install.packages("e1071")

# Load necessary libraries
library(caret)
library(e1071)

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

# Build a Naive Bayes classification model
naive_bayes_model <- naiveBayes(Species ~ ., data = training_set)

# Make predictions on the test set
predictions <- predict(naive_bayes_model, newdata = testing_set)

# Evaluate the model
confusion_matrix <- confusionMatrix(predictions, testing_set$Species)
print(confusion_matrix)
