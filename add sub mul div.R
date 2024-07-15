# Define a function for addition
add <- function(a, b) {
  result <- a + b
  return(result)
}

# Define a function for subtraction
subtract <- function(a, b) {
  result <- a - b
  return(result)
}


# Define a function for multiplication
multiply <- function(a, b) {
  result <- a * b
  return(result)
}

# Define a function for division
divide <- function(a, b) {
  if (b == 0) {
    return("Cannot divide by zero!")
  }
  result <- a / b
  return(result)
}

# Test the calculator functions
num1 <- 10
num2 <- 5
add_result <- add(num1, num2)
print(paste("Addition:", num1, "+", num2, "=", add_result))

subtract_result <- subtract(num1, num2)
print(paste("Subtraction:", num1, "-", num2, "=", subtract_result))

multiply_result <- multiply(num1, num2)
print(paste("Multiplication:", num1, "*", num2, "=", multiply_result))

divide_result <- divide(num1, num2)
print(paste("Division:", num1, "/", num2, "=", divide_result))