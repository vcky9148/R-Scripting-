# Construct the character vector
string_vector <- c("apple", "banana", "orange", "grape", "kiwi")

# Print the vector
print(string_vector)


# Find and display the length of the character vector
vector_length <- length(string_vector)
print("Length of the character vector:")
print(vector_length)


# Define the value to check
value_to_check <- "banana"

# Check if the value exists in the vector
if (value_to_check %in% string_vector) {
  print(paste(value_to_check, "exists in the vector."))
} else {
  print(paste(value_to_check, "does not exist in the vector."))
}