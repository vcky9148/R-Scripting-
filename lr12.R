# Install necessary packages (if not already installed)
install.packages("caret")
install.packages("e1071")
install.packages("class")

# Load necessary libraries
library(caret)
library(e1071)
library(class)

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

# Separate features and labels
training_features <- training_set[, -5]
training_labels <- training_set[, 5]
testing_features <- testing_set[, -5]
testing_labels <- testing_set[, 5]

# Build a k-Nearest Neighbor model with k=3
knn_model_k3 <- knn(train = training_features, test = testing_features, cl = training_labels, k = 3)

# Predictions are already made in the above step for k=3
predictions_k3 <- knn_model_k3

# Evaluate the model
confusion_matrix_k3 <- confusionMatrix(predictions_k3, testing_labels)
print(confusion_matrix_k3)

# Build and evaluate kNN models for k=5, k=7, and k=9
knn_model_k5 <- knn(train = training_features, test = testing_features, cl = training_labels, k = 5)
confusion_matrix_k5 <- confusionMatrix(knn_model_k5, testing_labels)

knn_model_k7 <- knn(train = training_features, test = testing_features, cl = training_labels, k = 7)
confusion_matrix_k7 <- confusionMatrix(knn_model_k7, testing_labels)

knn_model_k9 <- knn(train = training_features, test = testing_features, cl = training_labels, k = 9)
confusion_matrix_k9 <- confusionMatrix(knn_model_k9, testing_labels)

# Extract accuracy values
accuracy_k3 <- confusion_matrix_k3$overall['Accuracy']
accuracy_k5 <- confusion_matrix_k5$overall['Accuracy']
accuracy_k7 <- confusion_matrix_k7$overall['Accuracy']
accuracy_k9 <- confusion_matrix_k9$overall['Accuracy']

# Create a table displaying the corresponding accuracy values
accuracy_table <- data.frame(
  k = c(3, 5, 7, 9),
  Accuracy = c(accuracy_k3, accuracy_k5, accuracy_k7, accuracy_k9)
)

print(accuracy_table)

# Identify the optimized k value
optimized_k <- accuracy_table$k[which.max(accuracy_table$Accuracy)]
cat("The optimized k value is:", optimized_k, "\n")
