# Create two matrices
matrix1 <- matrix(1:9, nrow = 3)
matrix2 <- matrix(9:1, nrow = 3)

# Perform addition and subtraction
addition <- matrix1 + matrix2
subtraction <- matrix1 - matrix2

# Print the results
print("Matrix Addition:")
print(addition)
print("Matrix Subtraction:")
print(subtraction)


# Define the dimensions of the array
rows <- 3
cols <- 4

# Generate random integers and create the array
random_array <- array(sample(1:100, rows * cols, replace = TRUE), dim = c(rows, cols))

# Display the array
print("Random 2D Array:")
print(random_array)


# Accessing specific elements
print("Element at row 2, column 3:")
print(random_array[2, 3])

# Accessing specific rows
print("Second row:")
print(random_array[2, ])

# Accessing specific columns
print("Third column:")
print(random_array[, 3])


# Calculate mean, median, and standard deviation
mean_value <- mean(random_array)
median_value <- median(random_array)
std_deviation <- sd(as.vector(random_array))

# Print the results
print("Mean:")
print(mean_value)
print("Median:")
print(median_value)
print("Standard Deviation:")
print(std_deviation)
