# Install and load necessary packages
install.packages("caret")
install.packages("e1071")
library(caret)
library(e1071)

# Load the iris dataset
data<-read.csv("C:/Users/HP/Desktop/Iris.csv")

# Set a seed for reproducibility
set.seed(123)

# Create a partition index
index <- createDataPartition(iris$Species, p = 0.7, list = FALSE)

# Split the data into training (70%) and testing (30%) sets
training_set <- iris[index, ]
testing_set <- iris[-index, ]

# Train a SVM model
svm_model <- train(Species ~ ., data = training_set, method = "svmLinear")

# Make predictions on the test set
predictions <- predict(svm_model, newdata = testing_set)

# Evaluate the model using a confusion matrix
confusion_matrix <- confusionMatrix(predictions, testing_set$Species)
print(confusion_matrix)

# Function to split data and calculate accuracy
calculate_accuracy <- function(split_ratio) {
  index <- createDataPartition(iris$Species, p = split_ratio, list = FALSE)
  training_set <- iris[index, ]
  testing_set <- iris[-index, ]
  svm_model <- train(Species ~ ., data = training_set, method = "svmLinear")
  predictions <- predict(svm_model, newdata = testing_set)
  confusion_matrix <- confusionMatrix(predictions, testing_set$Species)
  return(confusion_matrix$overall['Accuracy'])
}

# Calculate accuracy for different split ratios
accuracy_20 <- calculate_accuracy(0.8)
accuracy_40 <- calculate_accuracy(0.6)
accuracy_50 <- calculate_accuracy(0.5)

print(paste("Accuracy for 20% test set:", accuracy_20))
print(paste("Accuracy for 40% test set:", accuracy_40))
print(paste("Accuracy for 50% test set:", accuracy_50))

# Recommended split ratio
print("Recommended split ratio is 70% training and 30% testing.")
