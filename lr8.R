# Load necessary libraries
install.packages("ggcorrplot")
library(ggcorrplot)

# Load the iris dataset
data<-read.csv("C:/Users/HP/Desktop/Iris.csv")

# View the first few rows of the dataset
head(iris)

# Calculate the correlation matrix
cor_matrix <- cor(iris[, 1:4]) # Using only numerical columns
print(cor_matrix)

# Plot the correlation matrix
ggcorrplot(cor_matrix, 
           method = "circle", 
           type = "lower", 
           lab = TRUE, 
           title = "Correlation Matrix of Iris Dataset")

# Analysis
# Identify a strong positive correlation
strong_positive_pair <- which(cor_matrix == max(cor_matrix[cor_matrix < 1]), arr.ind = TRUE)
print("Strong positive correlation pair:")
print(strong_positive_pair)

# Identify a strong negative correlation (if exists)
strong_negative_pair <- which(cor_matrix == min(cor_matrix), arr.ind = TRUE)
print("Strong negative correlation pair (if exists):")
print(strong_negative_pair)
