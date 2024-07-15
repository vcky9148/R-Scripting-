numeric_vector <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
print(numeric_vector)

even_indices <- numeric_vector[c(FALSE, TRUE)]
print(even_indices)

vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c(6, 7, 8, 9, 10)
addition <- vector1 + vector2
subtraction <- vector1 - vector2
print(addition)
print(subtraction)

test_scores <- c(85, 90, 78, 92, 88)
mean_score <- mean(test_scores)
median_score <- median(test_scores)
print(mean_score)
print(median_score)